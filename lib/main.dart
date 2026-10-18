<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ملف القضية ٤٧ — وحدة التحقيق الجنائي</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@300;400;600;800;900&family=Amiri:wght@700&display=swap" rel="stylesheet">
<style>
:root{
  --bg:#07070a;
  --panel:#0f0f15;
  --panel2:#14141c;
  --line:#242430;
  --gold:#d9a441;
  --gold-soft:#f0c878;
  --red:#b8342a;
  --green:#3f9a6a;
  --text:#cdc7ba;
  --muted:#78736a;
  --shadow:0 20px 60px rgba(0,0,0,.7);
}
*{box-sizing:border-box;margin:0;padding:0}
html,body{height:100%}
body{
  background:var(--bg);
  color:var(--text);
  font-family:'Cairo',system-ui,sans-serif;
  overflow-x:hidden;
  min-height:100vh;
  position:relative;
}
/* ===== خلفية سينمائية ===== */
body::before{
  content:"";position:fixed;inset:0;z-index:0;pointer-events:none;
  background:
    radial-gradient(circle at 20% 10%, rgba(217,164,65,.10), transparent 45%),
    radial-gradient(circle at 85% 85%, rgba(184,52,42,.10), transparent 50%),
    radial-gradient(circle at 50% 50%, rgba(30,30,50,.6), transparent 70%);
}
body::after{
  content:"";position:fixed;inset:0;z-index:1;pointer-events:none;opacity:.35;
  background:repeating-linear-gradient(0deg,rgba(255,255,255,.028) 0 1px,transparent 1px 3px);
  animation:scan 8s linear infinite;
}
@keyframes scan{from{background-position-y:0}to{background-position-y:120px}}

/* ===== شاشة البداية ===== */
#boot{
  position:fixed;inset:0;z-index:100;display:flex;align-items:center;justify-content:center;
  background:radial-gradient(circle at 50% 40%,#111118,#050508 70%);
  transition:opacity .9s ease,visibility .9s;
  padding:20px;
}
#boot.hide{opacity:0;visibility:hidden}
.boot-inner{text-align:center;max-width:640px;animation:fadeUp 1s ease}
@keyframes fadeUp{from{opacity:0;transform:translateY(30px)}to{opacity:1;transform:translateY(0)}}
.badge{
  display:inline-block;border:1px solid var(--gold-dim,#8a6a2c);color:var(--gold);
  padding:6px 18px;border-radius:100px;font-size:12px;letter-spacing:2px;
  margin-bottom:26px;background:rgba(217,164,65,.06);
}
.boot-inner h1{
  font-family:'Amiri',serif;font-size:clamp(34px,7vw,64px);
  color:#efe8d8;line-height:1.2;margin-bottom:14px;text-shadow:0 0 40px rgba(217,164,65,.35);
}
.boot-inner h1 span{color:var(--gold)}
.boot-inner p{color:var(--muted);font-size:15px;margin-bottom:38px;letter-spacing:1px}
.btn{
  font-family:'Cairo',sans-serif;cursor:pointer;border:none;outline:none;
  background:linear-gradient(180deg,#e0b154,#b8862f);
  color:#1a1206;font-weight:800;font-size:16px;letter-spacing:1px;
  padding:15px 46px;border-radius:8px;transition:.25s;
  box-shadow:0 10px 30px rgba(217,164,65,.25), inset 0 1px 0 rgba(255,255,255,.4);
}
.btn:hover{transform:translateY(-2px);box-shadow:0 16px 40px rgba(217,164,65,.4)}
.btn:active{transform:translateY(0)}
.btn.ghost{
  background:transparent;border:1px solid var(--line);color:var(--text);
  box-shadow:none;font-weight:600;padding:12px 26px;font-size:14px;
}
.btn.ghost:hover{border-color:var(--gold);color:var(--gold);transform:none}
.btn.danger{background:linear-gradient(180deg,#c93b30,#8d241c);color:#fff;
  box-shadow:0 10px 30px rgba(184,52,42,.35)}

/* ===== التطبيق ===== */
#app{position:relative;z-index:2;max-width:1180px;margin:0 auto;padding:22px 18px 80px;
  opacity:0;transition:opacity .8s ease .2s}
#app.show{opacity:1}

/* هيدر */
header{
  display:flex;align-items:center;justify-content:space-between;gap:18px;
  padding:16px 20px;border:1px solid var(--line);border-radius:14px;
  background:linear-gradient(180deg,rgba(20,20,28,.95),rgba(12,12,18,.95));
  box-shadow:var(--shadow);flex-wrap:wrap;
}
.logo{display:flex;align-items:center;gap:14px}
.seal{
  width:52px;height:52px;border-radius:50%;flex:0 0 auto;
  background:radial-gradient(circle at 35% 30%,#2a2a38,#0d0d13);
  border:1.5px solid var(--gold);display:grid;place-items:center;font-size:22px;
  box-shadow:0 0 22px rgba(217,164,65,.25) inset,0 0 18px rgba(217,164,65,.15);
  animation:pulse 3.5s ease-in-out infinite;
}
@keyframes pulse{0%,100%{box-shadow:0 0 22px rgba(217,164,65,.2) inset,0 0 12px rgba(217,164,65,.1)}50%{box-shadow:0 0 30px rgba(217,164,65,.45) inset,0 0 26px rgba(217,164,65,.3)}}
.logo h2{font-size:17px;font-weight:800;color:#eee6d6;letter-spacing:.5px}
.logo span{display:block;font-size:11.5px;color:var(--muted);font-weight:400;letter-spacing:1.5px;margin-top:2px}
.meta{display:flex;gap:26px;align-items:center;flex-wrap:wrap}
.meta .k{font-size:10.5px;color:var(--muted);letter-spacing:1.4px;display:block}
.meta .v{font-size:14px;color:var(--gold-soft);font-weight:700;font-family:'Cairo'}
.live{display:flex;align-items:center;gap:7px;font-size:12px;color:var(--red);font-weight:700}
.dot{width:8px;height:8px;border-radius:50%;background:var(--red);animation:blink 1.4s infinite}
@keyframes blink{0%,100%{opacity:1;box-shadow:0 0 0 0 rgba(184,52,42,.6)}50%{opacity:.35;box-shadow:0 0 0 8px rgba(184,52,42,0)}}

/* شريط التقدم */
.progress-wrap{margin-top:16px;display:flex;align-items:center;gap:14px}
.progress-label{font-size:11.5px;color:var(--muted);letter-spacing:1px;white-space:nowrap}
.bar{flex:1;height:6px;background:#16161e;border-radius:99px;overflow:hidden;border:1px solid #22222c}
.bar i{display:block;height:100%;width:0;border-radius:99px;
  background:linear-gradient(90deg,#8a6a2c,#d9a441,#f0c878);transition:width .7s cubic-bezier(.2,.8,.2,1);
  box-shadow:0 0 14px rgba(217,164,65,.6)}
.progress-num{font-size:12px;color:var(--gold);font-weight:800;min-width:38px}

/* التبويبات */
nav{display:flex;gap:8px;margin:20px 0 18px;overflow-x:auto;padding-bottom:4px;scrollbar-width:none}
nav::-webkit-scrollbar{display:none}
.tab{
  font-family:'Cairo';cursor:pointer;white-space:nowrap;
  background:rgba(255,255,255,.02);border:1px solid var(--line);color:var(--muted);
  padding:11px 20px;border-radius:10px;font-size:13.5px;font-weight:600;transition:.22s;
  display:flex;align-items:center;gap:8px;
}
.tab:hover{color:var(--text);border-color:#3a3a4a;background:rgba(255,255,255,.04)}
.tab.active{
  color:#1a1206;font-weight:800;border-color:transparent;
  background:linear-gradient(180deg,#e0b154,#c1933a);
  box-shadow:0 8px 24px rgba(217,164,65,.28);
}
.tab .n{font-size:10.5px;background:rgba(0,0,0,.18);padding:1px 7px;border-radius:99px}
.tab.active .n{background:rgba(0,0,0,.22)}

/* الأقسام */
.section{display:none;animation:showSec .5s ease}
.section.active{display:block}
@keyframes showSec{from{opacity:0;transform:translateY(14px)}to{opacity:1;transform:translateY(0)}}

.panel{
  background:linear-gradient(180deg,rgba(20,20,28,.92),rgba(12,12,17,.92));
  border:1px solid var(--line);border-radius:14px;padding:26px;box-shadow:var(--shadow);
  position:relative;overflow:hidden;
}
.panel::before{
  content:"";position:absolute;inset:0;pointer-events:none;
  background:radial-gradient(circle at 100% 0%,rgba(217,164,65,.06),transparent 55%);
}
.panel h3{
  font-family:'Amiri',serif;font-size:24px;color:#efe8d8;margin-bottom:6px;
  display:flex;align-items:center;gap:10px;
}
.panel h3::before{content:"";width:4px;height:22px;border-radius:2px;background:var(--gold)}
.panel .sub{color:var(--muted);font-size:12.5px;letter-spacing:1px;margin-bottom:22px}

/* ملف القضية */
.case-file{
  background:
    repeating-linear-gradient(0deg,transparent 0 27px,rgba(217,164,65,.05) 27px 28px),
    linear-gradient(180deg,#15151c,#0d0d13);
  border:1px solid var(--line);border-radius:12px;padding:28px;position:relative;
}
.case-file::after{
  content:"سري";position:absolute;top:16px;left:20px;transform:rotate(-12deg);
  border:3px solid rgba(184,52,42,.55);color:rgba(184,52,42,.7);
  font-weight:900;font-size:22px;padding:2px 14px;border-radius:6px;letter-spacing:4px;
  opacity:.8;
}
.case-row{display:grid;grid-template-columns:150px 1fr;gap:10px;padding:11px 0;
  border-bottom:1px dashed #232330;font-size:14px}
.case-row:last-child{border-bottom:none}
.case-row .lab{color:var(--muted);font-size:12.5px;letter-spacing:1px;padding-top:2px}
.case-row .val{color:#e6dfd2;font-weight:600;line-height:1.7}
.case-row .val.hot{color:var(--gold-soft)}
.typewriter{min-height:82px;line-height:2;font-size:14.5px;color:#ded7c9}
.cursor{display:inline-block;width:9px;height:17px;background:var(--gold);
  vertical-align:-2px;animation:cur .8s steps(1) infinite}
@keyframes cur{50%{opacity:0}}

/* المشتبهون */
.grid-suspects{display:grid;grid-template-columns:repeat(auto-fill,minmax(240px,1fr));gap:16px}
.suspect{
  background:linear-gradient(180deg,#17171f,#0e0e14);
  border:1px solid var(--line);border-radius:12px;padding:18px;cursor:pointer;
  transition:.28s;position:relative;overflow:hidden;
}
.suspect:hover{transform:translateY(-5px);border-color:rgba(217,164,65,.55);
  box-shadow:0 18px 40px rgba(0,0,0,.65),0 0 0 1px rgba(217,164,65,.15)}
.suspect::after{
  content:"";position:absolute;inset:auto 0 0 0;height:3px;
  background:var(--sc,#d9a441);opacity:0;transition:.3s;
}
.suspect:hover::after{opacity:1}
.avatar{
  width:74px;height:74px;border-radius:12px;display:grid;place-items:center;font-size:34px;
  background:radial-gradient(circle at 35% 30%,rgba(255,255,255,.09),rgba(0,0,0,.5));
  border:1px solid var(--line);margin-bottom:14px;filter:grayscale(.35);
  transition:.3s;
}
.suspect:hover .avatar{filter:grayscale(0);border-color:var(--sc)}
.suspect h4{font-size:16px;color:#efe8d8;font-weight:800;margin-bottom:3px}
.suspect .role{font-size:12px;color:var(--muted);margin-bottom:12px}
.chip{display:inline-block;font-size:10.5px;padding:3px 10px;border-radius:99px;
  border:1px solid var(--line);color:var(--muted);margin-left:4px}
.chip.done{border-color:rgba(63,154,106,.5);color:var(--green);background:rgba(63,154,106,.09)}

/* الأدلة */
.grid-evidence{display:grid;grid-template-columns:repeat(auto-fill,minmax(215px,1fr));gap:18px}
.ev{
  background:linear-gradient(180deg,#1b1b23,#101016);
  border:1px solid var(--line);border-radius:10px;padding:16px;cursor:pointer;
  transition:.3s;position:relative;
  transform:rotate(var(--rot,0deg));
}
.ev:hover{transform:rotate(0deg) scale(1.04);border-color:rgba(217,164,65,.6);
  box-shadow:0 20px 45px rgba(0,0,0,.7);z-index:5}
.ev .ico{font-size:32px;margin-bottom:10px;display:block;filter:drop-shadow(0 4px 10px rgba(0,0,0,.6))}
.ev h5{font-size:13.5px;color:#e6dfd2;font-weight:700;margin-bottom:6px;line-height:1.5}
.ev .tag{font-size:10px;letter-spacing:1px;color:var(--gold);opacity:.85}
.ev .tag::before{content:"● ";font-size:8px;vertical-align:1px}
.ev.seen{border-color:rgba(63,154,106,.35)}
.ev.seen .tag{color:var(--green)}
.ev .zoom{
  position:absolute;top:10px;left:10px;font-size:11px;color:var(--muted);
  opacity:0;transition:.3s;
}
.ev:hover .zoom{opacity:1}

/* الاستجواب */
.interro{display:grid;grid-template-columns:260px 1fr;gap:18px;min-height:460px}
@media(max-width:820px){.interro{grid-template-columns:1fr}}
.suspect-list{display:flex;flex-direction:column;gap:9px}
.sl-item{
  display:flex;align-items:center;gap:11px;padding:11px 13px;border-radius:10px;
  border:1px solid var(--line);background:rgba(255,255,255,.02);cursor:pointer;transition:.22s;
}
.sl-item:hover{background:rgba(255,255,255,.05)}
.sl-item.active{border-color:var(--gold);background:rgba(217,164,65,.10)}
.sl-item .mini{width:36px;height:36px;border-radius:8px;display:grid;place-items:center;
  font-size:18px;background:#191921;border:1px solid var(--line);flex:0 0 auto}
.sl-item .nm{font-size:13px;font-weight:700;color:#e6dfd2}
.sl-item .rl{font-size:10.5px;color:var(--muted)}

.chat{
  border:1px solid var(--line);border-radius:12px;background:#0a0a10;
  display:flex;flex-direction:column;overflow:hidden;
}
.chat-head{
  padding:13px 18px;border-bottom:1px solid var(--line);display:flex;
  align-items:center;justify-content:space-between;gap:10px;
  background:linear-gradient(180deg,rgba(217,164,65,.07),transparent);
}
.chat-head .who{font-size:14px;font-weight:800;color:var(--gold-soft)}
.chat-head .st{font-size:10.5px;color:var(--muted);letter-spacing:1px}
.chat-body{padding:18px;flex:1;overflow-y:auto;display:flex;flex-direction:column;gap:12px;
  max-height:340px;scrollbar-width:thin;scrollbar-color:#2a2a36 transparent}
.chat-body::-webkit-scrollbar{width:6px}
.chat-body::-webkit-scrollbar-thumb{background:#2a2a36;border-radius:9px}
.msg{max-width:82%;padding:11px 15px;border-radius:12px;font-size:13.5px;line-height:1.85;
  animation:msgIn .35s ease}
@keyframes msgIn{from{opacity:0;transform:translateY(8px)}to{opacity:1;transform:translateY(0)}}
.msg.det{background:rgba(217,164,65,.12);border:1px solid rgba(217,164,65,.28);
  align-self:flex-start;color:#f0e6d2}
.msg.sus{background:#16161f;border:1px solid #23232e;align-self:flex-end;color:#d5cfc3}
.msg .nm{display:block;font-size:10px;letter-spacing:1.2px;color:var(--gold);
  margin-bottom:5px;font-weight:800}
.msg.sus .nm{color:var(--muted)}
.typing{display:flex;gap:5px;align-self:flex-end;background:#16161f;border:1px solid #23232e;
  padding:14px 18px;border-radius:12px}
.typing i{width:7px;height:7px;border-radius:50%;background:var(--gold);opacity:.4;
  animation:tp 1.2s infinite}
.typing i:nth-child(2){animation-delay:.2s}
.typing i:nth-child(3){animation-delay:.4s}
@keyframes tp{0%,60%,100%{opacity:.25;transform:translateY(0)}30%{opacity:1;transform:translateY(-5px)}}
.chat-foot{padding:14px;border-top:1px solid var(--line);display:flex;flex-direction:column;gap:8px;
  background:#0c0c12}
.qbtn{
  font-family:'Cairo';text-align:right;cursor:pointer;background:#14141c;
  border:1px solid var(--line);color:var(--text);padding:11px 15px;border-radius:9px;
  font-size:13px;transition:.2s;position:relative;
}
.qbtn:hover:not(:disabled){border-color:var(--gold);color:var(--gold-soft);
  background:rgba(217,164,65,.07);transform:translateX(-4px)}
.qbtn:disabled{opacity:.32;cursor:default}
.qbtn .chk{position:absolute;left:12px;top:50%;transform:translateY(-50%);
  color:var(--green);font-size:13px}

/* الحكم */
.verdict-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(200px,1fr));gap:14px;margin:22px 0}
.verdict-opt{
  padding:16px;border-radius:11px;border:1px solid var(--line);background:#111119;
  cursor:pointer;transition:.24s;text-align:center;
}
.verdict-opt:hover{border-color:rgba(184,52,42,.6);background:rgba(184,52,42,.07)}
.verdict-opt.sel{border-color:var(--red);background:rgba(184,52,42,.14);
  box-shadow:0 0 0 1px var(--red),0 12px 30px rgba(184,52,42,.25)}
.verdict-opt .em{font-size:30px;display:block;margin-bottom:8px}
.verdict-opt .n{font-size:13.5px;font-weight:800;color:#e6dfd2}
.verdict-opt .r{font-size:11px;color:var(--muted);margin-top:2px}

/* نافذة النتيجة */
#result{
  position:fixed;inset:0;z-index:200;display:none;place-items:center;padding:20px;
  background:rgba(4,4,7,.92);backdrop-filter:blur(6px);
}
#result.show{display:grid;animation:showSec .5s ease}
.result-card{
  max-width:560px;width:100%;border-radius:16px;padding:38px 30px;text-align:center;
  border:1px solid var(--line);background:linear-gradient(180deg,#16161e,#0b0b11);
  box-shadow:0 40px 100px rgba(0,0,0,.85);position:relative;overflow:hidden;
}
.result-card::before{content:"";position:absolute;inset:0;
  background:radial-gradient(circle at 50% 0%,var(--rc,rgba(184,52,42,.25)),transparent 60%)}
.result-card .big{font-size:60px;margin-bottom:12px;position:relative;
  animation:pop .6s cubic-bezier(.2,1.6,.4,1)}
@keyframes pop{from{transform:scale(0);opacity:0}to{transform:scale(1);opacity:1}}
.result-card h2{font-family:'Amiri',serif;font-size:30px;margin-bottom:12px;position:relative;color:#f2ecdd}
.result-card p{color:var(--muted);font-size:14px;line-height:2;margin-bottom:26px;position:relative}
.result-card .btn{position:relative}

/* التوست */
#toast{
  position:fixed;bottom:26px;left:50%;transform:translate(-50%,140%);
  background:#16161f;border:1px solid var(--gold);color:var(--gold-soft);
  padding:12px 26px;border-radius:10px;font-size:13px;font-weight:700;z-index:300;
  transition:transform .45s cubic-bezier(.2,1.4,.4,1);box-shadow:0 18px 50px rgba(0,0,0,.8);
  display:flex;align-items:center;gap:9px;
}
#toast.show{transform:translate(-50%,0)}

/* مشغل الصوت */
.audio-btn{
  position:fixed;bottom:22px;right:22px;z-index:90;width:46px;height:46px;border-radius:50%;
  border:1px solid var(--line);background:#12121a;color:var(--gold);cursor:pointer;
  display:grid;place-items:center;font-size:17px;transition:.25s;box-shadow:0 10px 30px rgba(0,0,0,.6);
}
.audio-btn:hover{border-color:var(--gold);transform:scale(1.08)}
.audio-btn.off{color:#4a4a58}

/* بصمة زخرفية */
.fingerprint{position:absolute;left:-40px;bottom:-50px;width:220px;opacity:.045;pointer-events:none}
@media(max-width:600px){
  .case-row{grid-template-columns:1fr;gap:3px}
  .meta{gap:16px}
  .panel{padding:18px}
  .case-file{padding:20px}
}
</style>
</head>
<body>

<!-- ================= شاشة البداية ================= -->
<div id="boot">
  <div class="boot-inner">
    <div class="badge">وحدة التحقيق الجنائي — قسم جرائم القتل</div>
    <h1>ملف القضية <span>٤٧</span></h1>
    <p>جريمة قتل — برج النخيل، الطابق ٣١ — الساعة ٢٣:٤٧</p>
    <button class="btn" id="startBtn">🔓 افتح الملف</button>
  </div>
</div>

<!-- ================= التطبيق ================= -->
<div id="app">

  <header>
    <div class="logo">
      <div class="seal">🕵️</div>
      <div>
        <h2>وحدة التحقيق الجنائي</h2>
        <span>CASE FILE #47 — CLASSIFIED</span>
      </div>
    </div>
    <div class="meta">
      <div><span class="k">المحقق المسؤول</span><span class="v">أنت</span></div>
      <div><span class="k">التاريخ</span><span class="v" id="todayDate">—</span></div>
      <div class="live"><span class="dot"></span> القضية مفتوحة</div>
    </div>
  </header>

  <div class="progress-wrap">
    <span class="progress-label">تقدم التحقيق</span>
    <div class="bar"><i id="barFill"></i></div>
    <span class="progress-num" id="barNum">0%</span>
  </div>

  <nav>
    <button class="tab active" data-sec="case">📁 ملف القضية</button>
    <button class="tab" data-sec="suspects">👥 المشتبه بهم <span class="n" id="nSusp">4</span></button>
    <button class="tab" data-sec="evidence">🔍 الأدلة <span class="n" id="nEv">6</span></button>
    <button class="tab" data-sec="interro">🎙️ غرفة الاستجواب</button>
    <button class="tab" data-sec="verdict">⚖️ إصدار الحكم</button>
  </nav>

  <!-- ===== ملف القضية ===== -->
  <section class="section active" id="sec-case">
    <div class="panel">
      <svg class="fingerprint" viewBox="0 0 100 120" fill="none" stroke="#d9a441" stroke-width="1.5">
        <path d="M50 10c-22 0-40 18-40 40 0 15 8 25 8 40M50 20c-17 0-30 13-30 30 0 20 10 28 10 50M50 30c-11 0-20 9-20 20 0 22 12 30 12 55M50 40c-6 0-10 5-10 11 0 18 10 26 10 54M50 50c0 6 0 12 0 20"/>
      </svg>
      <h3>تقرير مسرح الجريمة</h3>
      <p class="sub">معلومات أساسية — للاطلاع فقط</p>

      <div class="case-file">
        <div class="case-row"><span class="lab">رقم القضية</span><span class="val">#47 / ٢٠٢٦</span></div>
        <div class="case-row"><span class="lab">الضحية</span><span class="val hot">فهد بن عبدالله المطيري — رجل أعمال، ٤٨ سنة</span></div>
        <div class="case-row"><span class="lab">المكان</span><span class="val">مكتبه الخاص — الطابق ٣١، برج النخيل</span></div>
        <div class="case-row"><span class="lab">الوقت المقدّر</span><span class="val hot">٢٣:٤٧ ليلاً — الساعة المكتبية متوقفة على هذا التوقيت</span></div>
        <div class="case-row"><span class="lab">سبب الوفاة</span><span class="val">تسمّم — مادة غير محددة في كوب القهوة</span></div>
        <div class="case-row"><span class="lab">ملاحظات أولية</span>
          <span class="val typewriter" id="typeOut"></span>
        </div>
      </div>
    </div>
  </section>

  <!-- ===== المشتبه بهم ===== -->
  <section class="section" id="sec-suspects">
    <div class="panel">
      <h3>المشتبه بهم</h3>
      <p class="sub">اضغط على أي بطاقة لعرض ملفها الكامل — ثم استجوبهم في غرفة الاستجواب</p>
      <div class="grid-suspects" id="suspectsGrid"></div>
    </div>
  </section>

  <!-- ===== الأدلة ===== -->
  <section class="section" id="sec-evidence">
    <div class="panel">
      <h3>الأدلة المادية</h3>
      <p class="sub">اضغط على الدليل لفحصه — الدليل المفحوص يتحول للأخضر</p>
      <div class="grid-evidence" id="evidenceGrid"></div>
    </div>
  </section>

  <!-- ===== الاستجواب ===== -->
  <section class="section" id="sec-interro">
    <div class="panel">
      <h3>غرفة الاستجواب</h3>
      <p class="sub">اختر مشتبهاً وابدأ بطرح الأسئلة — راقب التناقضات</p>
      <div class="interro">
        <div class="suspect-list" id="suspectList"></div>
        <div class="chat">
          <div class="chat-head">
            <span class="who" id="chatWho">— لم يتم اختيار أحد —</span>
            <span class="st" id="chatStatus">بانتظار البدء</span>
          </div>
          <div class="chat-body" id="chatBody">
            <div class="msg det"><span class="nm">المحقق</span>اختر مشتبهاً من القائمة لبدء الاستجواب.</div>
          </div>
          <div class="chat-foot" id="chatFoot"></div>
        </div>
      </div>
    </div>
  </section>

  <!-- ===== الحكم ===== -->
  <section class="section" id="sec-verdict">
    <div class="panel">
      <h3>إصدار الحكم النهائي</h3>
      <p class="sub">اختر الشخص الذي تعتقد أنه الجاني — لا يمكن التراجع بعد التأكيد</p>
      <div class="verdict-grid" id="verdictGrid"></div>
      <div style="text-align:center">
        <button class="btn danger" id="accuseBtn">⚖️ توجيه الاتهام</button>
      </div>
    </div>
  </section>

</div>

<!-- ================= نافذة النتيجة ================= -->
<div id="result">
  <div class="result-card" id="resultCard">
    <div class="big" id="resIcon">⚖️</div>
    <h2 id="resTitle">—</h2>
    <p id="resText">—</p>
    <button class="btn" id="resBtn">إغلاق الملف</button>
  </div>
</div>

<div id="toast"><span>✔</span><span id="toastText">تم</span></div>
<button class="audio-btn" id="audioBtn" title="الصوت">🔊</button>

<script>
/* =========================================================
   البيانات
   ========================================================= */
const SUSPECTS = [
  {
    id:'salem', name:'سالم الحربي', role:'شريك الضحية', age:42, em:'🕴️', color:'#8b5cf6',
    motive:'خلاف مالي حاد — الضحية رفض توقيع عقد بقيمة 12 مليون',
    alibi:'يقول إنه كان في مكتبه بالطابق السفلي حتى منتصف الليل',
    note:'متوتر جداً، يتعرق عند ذكر العقد المالي.',
    qa:[
      {q:'وين كنت لحظة الحادثة؟', a:'كنت في مكتبي بالطابق الثلاثين أراجع الأوراق… ما طلعت منه ولا مرة.'},
      {q:'وش علاقتك بالضحية؟', a:'شركاء من عشر سنين. صحيح اختلفنا على العقد الأخير، بس ما وصلت للقتل.'},
      {q:'من كان يستفيد من موته؟', a:'كل اللي عليه دين! بس أنا… أنا كان بيدي أوقف العقد وأخلّص. ما كان يحتاج أقتله.'},
      {q:'الكاميرا في طابقك كانت شغالة؟', a:'ما أدري والله… ما أتابع الكاميرات، هذي شغلة الأمن.'}
    ]
  },
  {
    id:'noura', name:'نورة القحطاني', role:'صحفية استقصائية', age:29, em:'👩‍💼', color:'#3f9a6a',
    motive:'الضحية هددها بقضية تشهير لإسقاط تحقيق كانت تعدّه',
    alibi:'تدّعي أنها كانت في مقهى خارج البرج — بلا شهود',
    note:'هادئة بشكل مريب، تجيب بسرعة كأنها محفوظة.',
    qa:[
      {q:'ليش كنتِ في البرج؟', a:'جيت أقابل مصدر… ما حصلت اللقاء، فطلعت.'},
      {q:'وش بينك وبين الضحية؟', a:'كان يهددني بقضية تشهير. مو عذر للقتل، بس أكيد يعطيك دافع.'},
      {q:'أحد شافك في المقهى؟', a:'لا… كنت لحالي. أعرف كيف هذي تبدو.'},
      {q:'عندك علم بالمادة السامة؟', a:'أنا صحفية، أبحث عن السموم في الملفات مو في الأكواب.'}
    ]
  },
  {
    id:'majed', name:'ماجد العتيبي', role:'حارس أمن البرج', age:35, em:'💂', color:'#b8342a',
    motive:'الضحية فصله قبل أسبوعين بعد مشادة — وكان يحمل مفتاحاً احتياطياً',
    alibi:'يقول إنه كان في غرفة الحراسة بالدور الأرضي — لكن الكاميرا هناك معطّلة',
    note:'يعرف كل مداخل ومخارج المبنى، ويملك صلاحية إيقاف الكاميرات.',
    qa:[
      {q:'مين يقدر يطفي الكاميرا؟', a:'…اللي في غرفة التحكم. أنا واحد منهم، بس ما سويت شي.'},
      {q:'ليش انفصلت من العمل؟', a:'مشادة بسيطة. الرجال كان عصبي، وأنا ما سكت. طلّعوني.'},
      {q:'ليش الكاميرا معطلة وقت الجريمة؟', a:'يمكن عطل فني… تصير كثير. أنا مو مسؤول عن الصيانة.'},
      {q:'تحمل مفتاح المكتب؟', a:'أنا حارس، معي مفاتيح كل الأدوار. هذا شغلي مو تهمة.'}
    ]
  },
  {
    id:'lama', name:'لمى الشمري', role:'شريكة الضحية', age:31, em:'👩', color:'#d9a441',
    motive:'الضحية كان ينوي فسخ الشراكة وحرمانها من حصتها',
    alibi:'تقول إنها كانت في منزلها — زوجها يؤكد ذلك',
    note:'تبدو حزينة بصدق، لكنها تخفي شيئاً عن العقد.',
    qa:[
      {q:'وش كانت حالتك مع الضحية؟', a:'متوترة. كان يبي يفسخ الشراكة ويتركني بلا شي.'},
      {q:'وين كنتِ؟', a:'في البيت، وزوجي معي. تقدر تتأكد.'},
      {q:'من المستفيد من وصيته؟', a:'ما أعرف… يمكن أخوه. أنا ما لي شي فيها.'},
      {q:'لمستِ كوب القهوة؟', a:'لا. أنا ما دخلت مكتبه ذاك اليوم أبداً.'}
    ]
  }
];

const EVIDENCE = [
  {id:'e1', em:'☕', title:'كوب القهوة', tag:'دليل مادي', rot:'-1.5deg',
   desc:'كوب قهوة على المكتب، يحتوي آثار مادة مهدئة بجرعة قاتلة. البصمات عليه تعود للضحية ولمرأة (لمى) من زيارة سابقة قبل أسبوع — أي أنها بصمات قديمة وليست من ليلة الحادثة.'},
  {id:'e2', em:'🕰️', title:'الساعة المكتبية', tag:'دليل زمني', rot:'1.8deg',
   desc:'الساعة متوقفة عند 23:47 تماماً. يبدو أنها سقطت أثناء مقاومة. هذا يثبّت وقت الجريمة بدقة.'},
  {id:'e3', em:'📷', title:'كاميرا الطابق 31', tag:'دليل تقني', rot:'-2.2deg',
   desc:'الكاميرا الموجّهة لباب المكتب أُوقفت يدوياً من غرفة التحكم في الساعة 23:31 — أي قبل الجريمة بـ 16 دقيقة. الصلاحية محصورة بثلاثة أشخاص، أحدهم حارس الأمن ماجد.'},
  {id:'e4', em:'✉️', title:'رسالة تهديد', tag:'دليل وثائقي', rot:'1.2deg',
   desc:'ورقة مكتوبة بخط اليد: "بتدفع الثمن". تحليل الخط يشير لخط شخص اعتاد كتابة تقارير أمنية — الخط مطابق لنموذج خط ماجد العتيبي.'},
  {id:'e5', em:'📄', title:'العقد المالي', tag:'دليل دافعي', rot:'-0.8deg',
   desc:'عقد بقيمة 12 مليون ريال بين الضحية وسالم الحربي، عليه ملاحظات بخط الضحية: "مرفوض — يجب إعادة الهيكلة". يعطي دافعاً قوياً لسالم، لكنه لا يربطه بمسرح الجريمة.'},
  {id:'e6', em:'🔑', title:'المفتاح الاحتياطي', tag:'دليل مادي', rot:'2deg',
   desc:'مفتاح احتياطي لمكتب الضحية موجود في جيب سترة الحارس ماجد. تقرير الصيانة يقول إن هذا المفتاح أُبلغ عن فقده قبل شهر — لكنه لم يُلغَ من النظام.'}
];

const KILLER = 'majed';

/* =========================================================
   حالة اللعبة
   ========================================================= */
const state = {
  seenEvidence: new Set(),
  interrogated: new Set(),
  asked: {},          // {suspectId: Set(index)}
  activeSuspect: null,
  selectedVerdict: null,
  sound: true
};

/* =========================================================
   أدوات
   ========================================================= */
const $  = s => document.querySelector(s);
const $$ = s => [...document.querySelectorAll(s)];

function toast(msg){
  $('#toastText').textContent = msg;
  $('#toast').classList.add('show');
  clearTimeout(window._tt);
  window._tt = setTimeout(()=>$('#toast').classList.remove('show'), 2600);
}

/* صوت بسيط */
let actx = null;
function beep(freq=520, dur=0.06, type='sine', vol=0.05){
  if(!state.sound) return;
  try{
    actx = actx || new (window.AudioContext||window.webkitAudioContext)();
    const o = actx.createOscillator(), g = actx.createGain();
    o.type = type; o.frequency.value = freq;
    g.gain.setValueAtTime(vol, actx.currentTime);
    g.gain.exponentialRampToValueAtTime(0.0001, actx.currentTime + dur);
    o.connect(g); g.connect(actx.destination);
    o.start(); o.stop(actx.currentTime + dur);
  }catch(e){}
}

/* =========================================================
   التهيئة
   ========================================================= */
function initDate(){
  const d = new Date();
  const fmt = d.toLocaleDateString('ar-EG',{year:'numeric',month:'long',day:'numeric'});
  $('#todayDate').textContent = fmt;
}

function renderSuspects(){
  const g = $('#suspectsGrid');
  g.innerHTML = SUSPECTS.map(s => `
    <div class="suspect" style="--sc:${s.color}" data-open="${s.id}">
      <div class="avatar" style="border-color:${s.color}55">${s.em}</div>
      <h4>${s.name}</h4>
      <div class="role">${s.role} — ${s.age} سنة</div>
      <span class="chip">الدافع: ${s.motive.slice(0,26)}…</span>
      <span class="chip ${state.interrogated.has(s.id)?'done':''}" data-chip="${s.id}">
        ${state.interrogated.has(s.id)?'✔ تم استجوابه':'لم يُستجوب'}
      </span>
    </div>
  `).join('');
  g.querySelectorAll('[data-open]').forEach(el=>{
    el.addEventListener('click', ()=>{
      beep(640,.05);
      const s = SUSPECTS.find(x=>x.id===el.dataset.open);
      toast(`${s.name} — ${s.role}`);
      switchSection('interro');
      selectSuspect(s.id);
    });
  });
}

function renderEvidence(){
  const g = $('#evidenceGrid');
  g.innerHTML = EVIDENCE.map(e => `
    <div class="ev ${state.seenEvidence.has(e.id)?'seen':''}" style="--rot:${e.rot}" data-ev="${e.id}">
      <span class="zoom">🔎 فحص</span>
      <span class="ico">${e.em}</span>
      <h5>${e.title}</h5>
      <div class="tag">${state.seenEvidence.has(e.id)?'تم الفحص':e.tag}</div>
    </div>
  `).join('');
  g.querySelectorAll('[data-ev]').forEach(el=>{
    el.addEventListener('click', ()=> openEvidence(el.dataset.ev));
  });
}

function openEvidence(id){
  const e = EVIDENCE.find(x=>x.id===id);
  if(!e) return;
  const first = !state.seenEvidence.has(id);
  state.seenEvidence.add(id);
  beep(first? 700 : 480, .06);
  renderEvidence();
  updateProgress();

  // عرض في نافذة النتيجة بشكل تقرير
  const card = $('#resultCard');
  card.style.setProperty('--rc','rgba(217,164,65,.28)');
  $('#resIcon').textContent = e.em;
  $('#resTitle').textContent = e.title;
  $('#resText').innerHTML = `<span style="color:#d9a441;font-size:11px;letter-spacing:2px;display:block;margin-bottom:10px">${e.tag}</span>${e.desc}`;
  $('#result').classList.add('show');
  $('#resBtn').onclick = ()=>{ $('#result').classList.remove('show'); };
  if(first) toast('تم إضافة الدليل للملف: ' + e.title);
}

/* =========================================================
   الاستجواب
   ========================================================= */
function renderSuspectList(){
  const l = $('#suspectList');
  l.innerHTML = SUSPECTS.map(s=>`
    <div class="sl-item ${state.activeSuspect===s.id?'active':''}" data-sid="${s.id}">
      <div class="mini" style="color:${s.color}">${s.em}</div>
      <div>
        <div class="nm">${s.name}</div>
        <div class="rl">${s.role}</div>
      </div>
    </div>
  `).join('');
  l.querySelectorAll('[data-sid]').forEach(el=>{
    el.addEventListener('click', ()=>{ beep(600,.05); selectSuspect(el.dataset.sid); });
  });
}

function selectSuspect(id){
  state.activeSuspect = id;
  const s = SUSPECTS.find(x=>x.id===id);
  renderSuspectList();

  $('#chatWho').textContent = s.name + ' — ' + s.role;
  $('#chatStatus').textContent = state.interrogated.has(id) ? 'تم الاستجواب' : 'قيد الاستجواب';

  const body = $('#chatBody');
  body.innerHTML = `
    <div class="msg det"><span class="nm">المحقق</span>
      ${s.name}، أنت الآن تحت الاستجواب في قضية مقتل فهد المطيري. تكلّم بصراحة.
    </div>
    <div class="msg sus"><span class="nm">${s.name}</span>
      ${s.alibi}. وهذا كل اللي عندي أقوله.
    </div>
  `;

  if(!state.asked[id]) state.asked[id] = new Set();

  const foot = $('#chatFoot');
  foot.innerHTML = s.qa.map((q,i)=>`
    <button class="qbtn" data-qi="${i}" ${state.asked[id].has(i)?'disabled':''}>
      ${q.q} ${state.asked[id].has(i)?'<span class="chk">✔</span>':''}
    </button>
  `).join('') + `
    <button class="qbtn" data-note="1" style="border-color:rgba(217,164,65,.4);color:#d9a441">
      🔎 اطلب ملاحظة المحقق
    </button>
  `;

  foot.querySelectorAll('[data-qi]').forEach(b=>{
    b.addEventListener('click', ()=> askQuestion(id, +b.dataset.qi));
  });
  foot.querySelector('[data-note]').addEventListener('click', ()=> detectiveNote(id));
}

function askQuestion(sid, qi){
  const s = SUSPECTS.find(x=>x.id===sid);
  const item = s.qa[qi];
  if(!item || state.asked[sid].has(qi)) return;
  state.asked[sid].add(qi);
  beep(560,.05);

  const body = $('#chatBody');
  const q = document.createElement('div');
  q.className = 'msg det';
  q.innerHTML = `<span class="nm">المحقق</span>${item.q}`;
  body.appendChild(q);
  body.scrollTop = body.scrollHeight;

  // مؤشر كتابة
  const t = document.createElement('div');
  t.className = 'typing';
  t.innerHTML = '<i></i><i></i><i></i>';
  body.appendChild(t);
  body.scrollTop = body.scrollHeight;

  setTimeout(()=>{
    t.remove();
    const a = document.createElement('div');
    a.className = 'msg sus';
    a.innerHTML = `<span class="nm">${s.name}</span>${item.a}`;
    body.appendChild(a);
    body.scrollTop = body.scrollHeight;
    beep(420,.07,'triangle');

    // تحديث الأزرار
    const btn = $(`#chatFoot [data-qi="${qi}"]`);
    if(btn){ btn.disabled = true; btn.innerHTML = item.q + ' <span class="chk">✔</span>'; }

    // إذا خلص كل الأسئلة
    if(state.asked[sid].size >= s.qa.length){
      state.interrogated.add(sid);
      $('#chatStatus').textContent = 'اكتمل الاستجواب';
      renderSuspects();
      updateProgress();
      toast('اكتمل استجواب: ' + s.name);
    }
  }, 900 + Math.random()*600);
}

function detectiveNote(sid){
  const s = SUSPECTS.find(x=>x.id===sid);
  const body = $('#chatBody');
  const n = document.createElement('div');
  n.className = 'msg det';
  n.style.background = 'rgba(63,154,106,.12)';
  n.style.borderColor = 'rgba(63,154,106,.35)';
  n.innerHTML = `<span class="nm" style="color:#3f9a6a">ملاحظة المحقق</span>${s.note}`;
  body.appendChild(n);
  body.scrollTop = body.scrollHeight;
  beep(760,.08,'sine');
}

/* =========================================================
   الحكم
   ========================================================= */
function renderVerdict(){
  const g = $('#verdictGrid');
  g.innerHTML = SUSPECTS.map(s=>`
    <div class="verdict-opt ${state.selectedVerdict===s.id?'sel':''}" data-vid="${s.id}">
      <span class="em">${s.em}</span>
      <div class="n">${s.name}</div>
      <div class="r">${s.role}</div>
    </div>
  `).join('');
  g.querySelectorAll('[data-vid]').forEach(el=>{
    el.addEventListener('click', ()=>{
      state.selectedVerdict = el.dataset.vid;
      beep(620,.05);
      renderVerdict();
    });
  });
}

$('#accuseBtn').addEventListener('click', ()=>{
  if(!state.selectedVerdict){ toast('اختر مشتبهاً أولاً'); beep(200,.15,'square'); return; }
  const s = SUSPECTS.find(x=>x.id===state.selectedVerdict);
  const correct = state.selectedVerdict === KILLER;

  const card = $('#resultCard');
  if(correct){
    card.style.setProperty('--rc','rgba(63,154,106,.32)');
    $('#resIcon').textContent = '✅';
    $('#resTitle').textContent = 'اتهام صحيح — أُغلقت القضية';
    $('#resText').innerHTML = `الجاني هو <b style="color:#3f9a6a">${s.name}</b>.<br>
      الدليل الحاسم: صلاحية إيقاف الكاميرا + المفتاح الاحتياطي في سترته + مطابقة خط رسالة التهديد.<br>
      <span style="color:#d9a441">أحسنت أيها المحقق. القضية #47 أُغلقت بنجاح.</span>`;
    beep(880,.12); setTimeout(()=>beep(1180,.18),140);
  } else {
    card.style.setProperty('--rc','rgba(184,52,42,.32)');
    $('#resIcon').textContent = '❌';
    $('#resTitle').textContent = 'اتهام خاطئ — عادت القضية للملف';
    $('#resText').innerHTML = `اتهمت <b style="color:#b8342a">${s.name}</b>، لكن الأدلة لا تدعم ذلك.<br>
      راجع: من يملك صلاحية إيقاف الكاميرا؟ من كان يحمل المفتاح الاحتياطي؟ من طابق خطّه رسالة التهديد؟`;
    beep(220,.25,'sawtooth');
  }
  $('#result').classList.add('show');
  $('#resBtn').onclick = ()=>{
    $('#result').classList.remove('show');
    if(!correct) switchSection('evidence');
  };
});

/* =========================================================
   التقدم والتنقل
   ========================================================= */
function updateProgress(){
  const total = EVIDENCE.length + SUSPECTS.length;
  const done = state.seenEvidence.size + state.interrogated.size;
  const pct = Math.round((done/total)*100);
  $('#barFill').style.width = pct + '%';
  $('#barNum').textContent = pct + '%';
  $('#nEv').textContent = EVIDENCE.length - state.seenEvidence.size + ' جديد';
  $('#nSusp').textContent = SUSPECTS.length - state.interrogated.size + ' متبقٍ';
}

function switchSection(name){
  $$('.section').forEach(s=>s.classList.remove('active'));
  $$('.tab').forEach(t=>t.classList.remove('active'));
  const sec = $('#sec-' + name);
  if(sec) sec.classList.add('active');
  const tab = $(`.tab[data-sec="${name}"]`);
  if(tab) tab.classList.add('active');
  beep(500,.04);
}

$$('.tab').forEach(t=>{
  t.addEventListener('click', ()=> switchSection(t.dataset.sec));
});

/* =========================================================
   الآلة الكاتبة
   ========================================================= */
const TYPE_TEXT = "الجاني دخل المكتب بين ٢٣:٣٥ و٢٣:٤٧. لا آثار كسر على الباب — إذن الداخل يملك مفتاحاً. الكاميرا أُوقفت من الداخل. الضحية قاوم قبل أن يُسمَّم، فسقطت الساعة. كل شيء يشير إلى شخص يعرف المبنى أكثر من الآخرين…";

function typeWriter(){
  const el = $('#typeOut');
  el.innerHTML = '';
  let i = 0;
  const cur = document.createElement('span');
  cur.className = 'cursor';
  el.appendChild(cur);
  const t = setInterval(()=>{
    if(i >= TYPE_TEXT.length){ clearInterval(t); cur.remove(); return; }
    cur.insertAdjacentText('beforebegin', TYPE_TEXT[i]);
    i++;
    if(i % 3 === 0) beep(1200 + Math.random()*300, .012, 'square', .012);
  }, 28);
}

/* =========================================================
   الصوت
   ========================================================= */
$('#audioBtn').addEventListener('click', ()=>{
  state.sound = !state.sound;
  $('#audioBtn').textContent = state.sound ? '🔊' : '🔇';
  $('#audioBtn').classList.toggle('off', !state.sound);
  if(state.sound) beep(700,.08);
});

/* =========================================================
   البدء
   ========================================================= */
$('#startBtn').addEventListener('click', ()=>{
  beep(600,.08); setTimeout(()=>beep(900,.12),100);
  $('#boot').classList.add('hide');
  $('#app').classList.add('show');
  setTimeout(typeWriter, 500);
  setTimeout(()=>toast('مرحباً أيها المحقق — الملف بين يديك'), 1400);
});

/* التهيئة الأولية */
initDate();
renderSuspects();
renderEvidence();
renderSuspectList();
renderVerdict();
updateProgress();
</script>
</body>
</html>