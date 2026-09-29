// Run with Node.js; requires sharp (set NODE_PATH to bundled packages, as render-preview.cjs does).
// Cuts the ModIcon out of its near-black background and composes it, rotated, into the corner
// of the delivered Preview.png. See STYLE_RIMWORLD.md, "Le ModIcon détouré sur la vitrine".
const fs = require('node:fs');
const path = require('node:path');
const sharp = require('sharp');
const root = path.resolve(__dirname, '..');

const ICON = path.join(root, 'Mod/About/ModIcon.png');
const PREVIEW = path.join(root, 'Mod/About/Preview.png');
const ICON_TARGET_SIDE = 190; // px, before rotation
const ROTATE_DEG = 15; // sign picked below by corner
const CORNER = 'bottom-left'; // text block sits top-left, so the icon goes bottom-left, +15deg
const CROP = 5; // px the OPAQUE icon shape (not the rotated square's transparent padding) sticks past bottom and left edges

// Flood-fill (BFS) from the image border: a background pixel is only cut if it is reachable
// from the border through other background-colored pixels. Interior pixels of the same color
// (the eye, the grin) are never touched, however close their color is to the background —
// only their border-connectivity, not a distance threshold, decides. See the failed
// NeverOutOfPrint attempt cited in STYLE_RIMWORLD.md: a global color-distance cutoff hollowed
// out the icon's own dark features.
async function cutBackground(buf, info) {
  const { width, height, channels } = info;
  const data = Buffer.from(buf); // mutate a copy
  const n = width * height;
  const bgConnected = new Uint8Array(n); // 0 = not reached, 1 = reached (background side)
  const dist = new Float64Array(n);

  // Background reference: median of the four corner pixels (robust to one corner touching art).
  const corners = [
    [0, 0], [width - 1, 0], [0, height - 1], [width - 1, height - 1],
  ].map(([x, y]) => {
    const i = (y * width + x) * channels;
    return [data[i], data[i + 1], data[i + 2]];
  });
  const bg = [0, 1, 2].map((c) => {
    const vals = corners.map((p) => p[c]).sort((a, b) => a - b);
    return (vals[1] + vals[2]) / 2;
  });

  const colorDist = (i) => {
    const dr = data[i] - bg[0];
    const dg = data[i + 1] - bg[1];
    const db = data[i + 2] - bg[2];
    return Math.sqrt(dr * dr + dg * dg + db * db);
  };

  const LOW = 28; // below: fully background, cut
  const HIGH = 60; // above: kept opaque even if border-connected (feather band between)

  // BFS from every border pixel that is itself close enough to bg to seed the flood.
  const queue = [];
  const push = (x, y) => {
    const p = y * width + x;
    if (bgConnected[p]) return;
    const i = p * channels;
    const d = colorDist(i);
    if (d > HIGH) return; // too different from bg to ever be background, don't flood through it
    bgConnected[p] = 1;
    dist[p] = d;
    queue.push(p);
  };
  for (let x = 0; x < width; x++) { push(x, 0); push(x, height - 1); }
  for (let y = 0; y < height; y++) { push(0, y); push(width - 1, y); }

  while (queue.length) {
    const p = queue.pop();
    const x = p % width, y = (p / width) | 0;
    if (x > 0) push(x - 1, y);
    if (x < width - 1) push(x + 1, y);
    if (y > 0) push(x, y - 1);
    if (y < height - 1) push(x, y + 1);
  }

  for (let p = 0; p < n; p++) {
    if (!bgConnected[p]) continue; // never touched: not reachable from the border, keep opaque
    const i = p * channels;
    const d = dist[p];
    let alpha;
    if (d <= LOW) alpha = 0;
    else alpha = Math.round(255 * ((d - LOW) / (HIGH - LOW)));
    data[i + 3] = Math.min(data[i + 3], alpha);
  }
  return data;
}

(async () => {
  const iconRaw = await sharp(ICON).ensureAlpha().raw().toBuffer({ resolveWithObject: true });
  const cutData = await cutBackground(iconRaw.data, iconRaw.info);
  const cutIcon = sharp(cutData, { raw: iconRaw.info }).png();

  // Checkerboard proof, so a hole in the interior (invisible on flat dark) would show.
  const checkerSize = 16;
  const checker = Buffer.alloc(iconRaw.info.width * iconRaw.info.height * 4);
  for (let y = 0; y < iconRaw.info.height; y++) {
    for (let x = 0; x < iconRaw.info.width; x++) {
      const on = (((x / checkerSize) | 0) + ((y / checkerSize) | 0)) % 2 === 0;
      const i = (y * iconRaw.info.width + x) * 4;
      const v = on ? 210 : 140;
      checker[i] = v; checker[i + 1] = v; checker[i + 2] = v; checker[i + 3] = 255;
    }
  }
  await sharp(checker, { raw: { width: iconRaw.info.width, height: iconRaw.info.height, channels: 4 } })
    .composite([{ input: await cutIcon.clone().toBuffer() }])
    .png()
    .toFile(path.join(__dirname, 'modicon-cutout-checker.png'));

  const rotateSign = CORNER.endsWith('left') ? 1 : -1;
  const resized = await cutIcon.clone().resize(ICON_TARGET_SIDE, ICON_TARGET_SIDE).toBuffer();
  const rotated = await sharp(resized)
    .rotate(rotateSign * ROTATE_DEG, { background: { r: 0, g: 0, b: 0, alpha: 0 } })
    .toBuffer();
  // Opaque bounding box within the rotated (padded) square: crop is measured against this,
  // not against the square's own edges, which include transparent rotation padding.
  const { data: rotPix, info: rotInfo } = await sharp(rotated).raw().toBuffer({ resolveWithObject: true });
  let minX = rotInfo.width, maxX = -1, minY = rotInfo.height, maxY = -1;
  for (let y = 0; y < rotInfo.height; y++) {
    for (let x = 0; x < rotInfo.width; x++) {
      if (rotPix[(y * rotInfo.width + x) * rotInfo.channels + 3] > 0) {
        if (x < minX) minX = x; if (x > maxX) maxX = x;
        if (y < minY) minY = y; if (y > maxY) maxY = y;
      }
    }
  }
  const rotMeta = { width: rotInfo.width, height: rotInfo.height };

  const preview = sharp(PREVIEW);
  const previewMeta = await preview.metadata();
  // top/left place the whole padded square; solved so the opaque box's own far edge lands
  // exactly CROP px past the frame edge.
  const top = CORNER.startsWith('bottom') ? previewMeta.height + CROP - maxY : -CROP - minY;
  const left = CORNER.endsWith('left') ? -CROP - minX : previewMeta.width + CROP - maxX;

  await preview
    .composite([{ input: rotated, top, left }])
    .png()
    .toFile(path.join(__dirname, 'preview-with-icon.png'));

  console.log(JSON.stringify({
    corner: CORNER, rotateDeg: rotateSign * ROTATE_DEG,
    iconSquare: ICON_TARGET_SIDE, rotatedSize: [rotMeta.width, rotMeta.height],
    placedAt: { top, left }, bgSample: 'see script', preview: previewMeta.width + 'x' + previewMeta.height,
  }, null, 2));
})().catch((e) => { console.error(e); process.exitCode = 1; });
