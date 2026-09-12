// Run with Node.js; requires playwright and sharp (set NODE_PATH to bundled packages).
const fs=require('node:fs'),path=require('node:path'),http=require('node:http');
const {chromium}=require('playwright'),sharp=require('sharp');
const root=path.resolve(__dirname,'..');
(async()=>{
 const server=http.createServer((req,res)=>{const file=path.resolve(root,'.'+decodeURIComponent(req.url.split('?')[0]));if(!file.startsWith(root+path.sep)){res.writeHead(403).end();return;}fs.readFile(file,(err,data)=>{if(err){res.writeHead(404).end();return;}res.setHeader('Content-Type',({'.html':'text/html','.json':'application/json','.xml':'application/xml','.png':'image/png'})[path.extname(file)]||'text/plain');res.end(data);});});
 await new Promise(r=>server.listen(0,'127.0.0.1',r));
 let browser;
 try{
 browser=await chromium.launch({channel:'chrome',headless:true});
 const page=await browser.newPage({viewport:{width:896,height:504},deviceScaleFactor:1});
 await page.goto(`http://127.0.0.1:${server.address().port}/Art/preview.html`);
 await page.evaluate(()=>window.previewReady);
 const cdp=await page.context().newCDPSession(page);await cdp.send('DOM.enable');await cdp.send('CSS.enable');
 const {root:doc}=await cdp.send('DOM.getDocument');
 const report={version:await page.locator('.version').innerText(),fonts:{},regions:{}};
 for(const sel of ['h1','.title-suffix','.tag','p','.version']){const {nodeId}=await cdp.send('DOM.querySelector',{nodeId:doc.nodeId,selector:sel});report.fonts[sel]=(await cdp.send('CSS.getPlatformFontsForNode',{nodeId})).fonts;report.regions[sel]=await page.locator(sel).boundingBox();}
 const final=path.join(root,'Mod/About/Preview.png');await page.screenshot({path:final});
 await sharp(final).resize({width:268}).png().toFile(path.join(__dirname,'preview-268.png'));
 await page.addStyleTag({content:'.text { visibility:hidden; } .version {visibility:hidden;}'});
 const bg=path.join(__dirname,'preview-background.png');await page.screenshot({path:bg});
 const {data,info}=await sharp(bg).removeAlpha().raw().toBuffer({resolveWithObject:true});
 const palette=JSON.parse(fs.readFileSync(path.join(__dirname,'preview-palette.json')));
 const lum=rgb=>rgb.map(v=>{v/=255;return v<=.04045?v/12.92:((v+.055)/1.055)**2.4;}).reduce((s,v,i)=>s+v*[.2126,.7152,.0722][i],0);
 const color=h=>h.slice(1).match(/../g).map(v=>parseInt(v,16));
 const ratio=(a,b)=>(Math.max(a,b)+.05)/(Math.min(a,b)+.05);
 report.contrast={};
 for(const sel of ['h1','.title-suffix','.tag','p']){const r=report.regions[sel],ink=lum(color(palette[(sel==='.tag'||sel==='.title-suffix')?'inkSecondary':'inkPrimary']));let min=Infinity;for(let y=Math.floor(r.y);y<Math.ceil(r.y+r.height);y++)for(let x=Math.floor(r.x);x<Math.ceil(r.x+r.width);x++){const i=(y*info.width+x)*info.channels;min=Math.min(min,ratio(ink,lum([...data.subarray(i,i+3)])));}report.contrast[sel]=min;}
 report.contrast.badge=ratio(lum(color(palette.badgeInk)),lum(color(palette.accent)));
 report.bytes=fs.statSync(final).size;report.size={width:896,height:504};
 fs.writeFileSync(path.join(__dirname,'preview-qa.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
 if(Object.values(report.contrast).some(v=>v<4.5)||report.bytes>=900000)throw Error('Preview QA failed');
 }finally{if(browser)await browser.close();server.close();}
})().catch(e=>{console.error(e);process.exitCode=1;});
