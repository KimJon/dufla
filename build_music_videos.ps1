$nav = @"
  <nav id="navbar">
    <a href="index.html" class="nav-logo">DUFLA<span>DILIGON</span></a>
    <ul class="nav-links">
      <li><a href="index.html">HOME</a></li>
      <li><a href="about.html">ABOUT DUFLA</a></li>
      <li><a href="music-videos.html" class="active">MUSIC & VIDEOS</a></li>
      <li><a href="events.html">EVENTS</a></li>
      <li><a href="10-years.html">10 YEARS</a></li>
      <li><a href="support-partnerships.html">SUPPORT & PARTNERSHIPS</a></li>
      <li><a href="news.html">NEWS</a></li>
      <li><a href="book-dufla.html">BOOK DUFLA</a></li>
    </ul>
    <div class="hamburger" id="hamburger"><span></span><span></span><span></span></div>
  </nav>
  <div class="mobile-menu" id="mobileMenu">
    <a href="index.html">HOME</a>
    <a href="about.html">ABOUT DUFLA</a>
    <a href="music-videos.html">MUSIC & VIDEOS</a>
    <a href="events.html">EVENTS</a>
    <a href="10-years.html">10 YEARS</a>
    <a href="support-partnerships.html">SUPPORT & PARTNERSHIPS</a>
    <a href="news.html">NEWS</a>
    <a href="book-dufla.html">BOOK DUFLA</a>
  </div>
"@

$footer = @"
  <footer>
    <div class="container">
      <div class="footer-logo">DUFLA<span class="text-red">DILIGON</span></div>
      <p style="color:var(--maasai-yellow); letter-spacing:2px; font-weight:600; font-size:0.9rem; margin-bottom:40px; text-transform:uppercase;">Music. Culture. Peace. Unity.</p>
      <div style="display:flex; justify-content:center; gap:40px; flex-wrap:wrap; margin-bottom:40px;">
        <ul style="list-style:none; text-align:left; line-height:2;">
          <li><a href="index.html">Home</a></li>
          <li><a href="about.html">About Dufla</a></li>
          <li><a href="music-videos.html">Music & Videos</a></li>
          <li><a href="events.html">Events</a></li>
        </ul>
        <ul style="list-style:none; text-align:left; line-height:2;">
          <li><a href="10-years.html">10 Years</a></li>
          <li><a href="support-partnerships.html">Support & Partnerships</a></li>
          <li><a href="news.html">News</a></li>
          <li><a href="book-dufla.html">Book Dufla</a></li>
        </ul>
        <ul style="list-style:none; text-align:left; line-height:2;">
          <li><strong style="color:#fff;">Follow Dufla Diligon</strong></li>
          <li><a href="https://www.tiktok.com/@dufladiligon?_r=1&_t=ZS-9A8BRUnoHFk" target="_blank">TikTok</a></li>
          <li><a href="https://instagram.com/dufladiligon" target="_blank">Instagram</a></li>
          <li><a href="https://www.facebook.com/share/1Dr2cRrCRw/" target="_blank">Facebook</a></li>
          <li><a href="https://youtube.com/@duflamusic?si=NporpgNPWeEd60oz" target="_blank">YouTube</a></li>
        </ul>
      </div>
      <div class="footer-bottom">
        <p>&copy; 2026 Dufla Diligon. All Rights Reserved. | <a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a></p>
        <p style="margin-top:10px;">Website by <strong>Haxor Management & Technology Consultants</strong> | Powered by <strong>Extra Levels Marketing</strong></p>
      </div>
    </div>
  </footer>
  <script>
    window.addEventListener('scroll', () => document.getElementById('navbar').classList.toggle('scrolled', window.scrollY > 50));
    const h = document.getElementById('hamburger'), m = document.getElementById('mobileMenu');
    if(h && m) { h.addEventListener('click', () => { m.classList.toggle('open'); }); }
  </script>
</body>
</html>
"@

$musicVideosPage = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Music & Videos | Dufla Diligon | DUFLA DILIGON TV</title>
  <meta name="description" content="Watch official music videos from Dufla Diligon. Donjo Maber, Rumours, Etingli, Achamoyong ft Saningo Dimero and more.">
  <link rel="stylesheet" href="style.css">
  <style>
    /* ── PAGE HEADER ── */
    .page-header { background-image: url('dufla 1.JPG'); }

    /* ── FEATURED SLIDER ── */
    .featured-slider-section {
      padding: 80px 0 60px;
      background: #0a0a0a;
    }
    .featured-slider-section h2 {
      text-align: center;
      margin-bottom: 10px;
      color: var(--maasai-yellow);
      font-size: clamp(2rem,4vw,3rem);
    }
    .featured-slider-section .sub {
      text-align: center;
      color: #999;
      font-size: 0.9rem;
      letter-spacing: 2px;
      text-transform: uppercase;
      margin-bottom: 50px;
    }

    /* slider wrapper */
    .video-slider-wrapper {
      position: relative;
      overflow: hidden;
      max-width: 1200px;
      margin: 0 auto;
    }
    .video-slider-track {
      display: flex;
      transition: transform 0.6s cubic-bezier(.25,.46,.45,.94);
      gap: 0;
    }

    /* each slide = a featured video card */
    .video-slide {
      flex: 0 0 100%;
      max-width: 100%;
      padding: 0 20px;
      box-sizing: border-box;
    }
    .video-slide-inner {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 40px;
      align-items: center;
      background: rgba(255,255,255,0.02);
      border: 1px solid rgba(255,255,255,0.06);
    }
    .video-slide-embed {
      aspect-ratio: 16/9;
      width: 100%;
    }
    .video-slide-embed iframe {
      width: 100%;
      height: 100%;
      border: none;
      display: block;
    }
    .video-slide-info {
      padding: 40px 40px 40px 10px;
    }
    .video-slide-info .track-num {
      font-size: 4rem;
      font-family: var(--font-heading);
      font-weight: 900;
      color: rgba(255,255,255,0.05);
      line-height: 1;
      margin-bottom: -20px;
    }
    .video-slide-info h3 {
      font-size: clamp(1.4rem,2.5vw,2.2rem);
      font-family: var(--font-heading);
      color: var(--white);
      margin-bottom: 8px;
      line-height: 1.2;
    }
    .video-slide-info .feat {
      color: var(--maasai-yellow);
      font-size: 0.85rem;
      letter-spacing: 2px;
      text-transform: uppercase;
      margin-bottom: 16px;
    }
    .video-slide-info p {
      color: #aaa;
      font-size: 0.95rem;
      line-height: 1.7;
      margin-bottom: 30px;
    }
    .video-slide-info .watch-btn {
      display: inline-block;
      padding: 14px 30px;
      background: var(--maasai-red);
      color: #fff;
      font-weight: 700;
      font-size: 0.85rem;
      letter-spacing: 2px;
      text-transform: uppercase;
      text-decoration: none;
      transition: background 0.3s;
    }
    .video-slide-info .watch-btn:hover { background: #b01010; }

    /* nav arrows */
    .slider-btn {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      width: 50px;
      height: 50px;
      background: rgba(10,10,10,0.8);
      border: 1px solid var(--maasai-red);
      color: #fff;
      font-size: 1.4rem;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 10;
      transition: background 0.3s;
      user-select: none;
    }
    .slider-btn:hover { background: var(--maasai-red); }
    .slider-btn.prev { left: 10px; }
    .slider-btn.next { right: 10px; }

    /* dots */
    .slider-dots {
      display: flex;
      justify-content: center;
      gap: 10px;
      margin-top: 30px;
    }
    .slider-dot {
      width: 10px;
      height: 10px;
      border-radius: 50%;
      background: rgba(255,255,255,0.2);
      cursor: pointer;
      border: none;
      transition: background 0.3s;
    }
    .slider-dot.active { background: var(--maasai-red); transform: scale(1.3); }

    /* ── GRID SECTION ── */
    .videos-grid-section {
      padding: 80px 0;
      background: var(--earth-dark);
    }
    .videos-grid-section h2 {
      text-align: center;
      color: var(--white);
      margin-bottom: 50px;
      font-size: clamp(1.8rem,3vw,2.5rem);
    }
    .video-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 25px;
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 20px;
    }
    .video-card {
      background: rgba(255,255,255,0.02);
      border: 1px solid rgba(255,255,255,0.05);
      transition: transform 0.3s, border-color 0.3s;
      cursor: pointer;
      text-decoration: none;
      display: block;
    }
    .video-card:hover { transform: translateY(-6px); border-color: var(--maasai-yellow); }
    .video-thumb {
      width: 100%;
      aspect-ratio: 16/9;
      position: relative;
      overflow: hidden;
      background: #111;
    }
    .video-thumb img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.5s;
    }
    .video-card:hover .video-thumb img { transform: scale(1.06); }
    .play-overlay {
      position: absolute;
      inset: 0;
      background: rgba(0,0,0,0.35);
      display: flex;
      align-items: center;
      justify-content: center;
      transition: background 0.3s;
    }
    .video-card:hover .play-overlay { background: rgba(217,28,28,0.4); }
    .play-icon {
      width: 54px;
      height: 54px;
      background: var(--maasai-red);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .play-icon::after {
      content: '';
      border: solid transparent;
      border-width: 10px 0 10px 18px;
      border-left-color: #fff;
      margin-left: 4px;
    }
    .video-card-info {
      padding: 18px 20px 22px;
    }
    .video-card-title {
      font-weight: 700;
      font-size: 1rem;
      color: var(--white);
      margin-bottom: 5px;
      font-family: var(--font-heading);
    }
    .video-card-meta {
      font-size: 0.78rem;
      color: var(--maasai-yellow);
      text-transform: uppercase;
      letter-spacing: 1px;
    }

    /* subscribe CTA */
    .subscribe-cta {
      text-align: center;
      padding: 80px 20px;
      background: var(--maasai-blue);
    }
    .subscribe-cta h2 { color: var(--white); margin-bottom: 15px; }
    .subscribe-cta p { color: #aaa; margin-bottom: 40px; max-width: 500px; margin-left: auto; margin-right: auto; }

    /* ── RESPONSIVE ── */
    @media(max-width: 900px) {
      .video-slide-inner { grid-template-columns: 1fr; }
      .video-slide-info { padding: 20px 25px 30px; }
      .video-slide-info .track-num { display: none; }
      .slider-btn { width: 38px; height: 38px; font-size: 1rem; }
    }
    @media(max-width: 600px) {
      .video-slide { padding: 0 10px; }
    }
  </style>
</head>
<body>
$nav

  <!-- Page Header -->
  <header class="page-header">
    <div class="container">
      <h1 class="cinematic-text">MUSIC & <span class="text-yellow">VIDEOS</span></h1>
      <div class="bead-divider"><div class="bead yellow"></div><div class="bead blue"></div><div class="bead red"></div></div>
      <p class="cinematic-text" style="font-size:1.1rem; color:var(--white); margin-top:10px; letter-spacing:3px;">LISTEN. WATCH. EXPERIENCE THE JOURNEY.</p>
    </div>
  </header>

  <!-- ── FEATURED SLIDING VIDEOS ── -->
  <section class="featured-slider-section">
    <h2>FEATURED VIDEOS</h2>
    <p class="sub">DUFLA DILIGON TV &mdash; Official Music Videos</p>

    <div class="video-slider-wrapper">
      <button class="slider-btn prev" id="sliderPrev">&#8592;</button>
      <button class="slider-btn next" id="sliderNext">&#8594;</button>

      <div class="video-slider-track" id="sliderTrack">

        <!-- Slide 1: Donjo Maber -->
        <div class="video-slide">
          <div class="video-slide-inner">
            <div class="video-slide-embed">
              <iframe src="https://www.youtube.com/embed/bd77wL5r-Ck" title="Iyanii ft Dufla Diligon - Donjo Maber" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen loading="lazy"></iframe>
            </div>
            <div class="video-slide-info">
              <div class="track-num">01</div>
              <h3>DONJO MABER</h3>
              <div class="feat">&#9733; ft. Iyanii &nbsp;|&nbsp; Afro-Dancehall &nbsp;|&nbsp; 2025</div>
              <p>The smash hit collaboration that took the nation by storm. A high-energy Afro-Dancehall anthem celebrating love, culture and rhythm &mdash; one of the biggest Kenyan tracks of 2025.</p>
              <a href="https://www.youtube.com/watch?v=bd77wL5r-Ck" target="_blank" class="watch-btn">WATCH ON YOUTUBE &#8599;</a>
            </div>
          </div>
        </div>

        <!-- Slide 2: Rumours -->
        <div class="video-slide">
          <div class="video-slide-inner">
            <div class="video-slide-embed">
              <iframe src="https://www.youtube.com/embed/UvXZw2tWkhQ" title="Dufla Diligon ft Iyanii - Rumours" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen loading="lazy"></iframe>
            </div>
            <div class="video-slide-info">
              <div class="track-num">02</div>
              <h3>RUMOURS</h3>
              <div class="feat">&#9733; ft. Iyanii &nbsp;|&nbsp; Afro-Dancehall &nbsp;|&nbsp; Oct 2025</div>
              <p>The powerful follow-up to Donjo Maber. A bold anthem against gossip, fake news and lies &mdash; delivered with the signature Dufla Diligon energy and style.</p>
              <a href="https://www.youtube.com/watch?v=UvXZw2tWkhQ" target="_blank" class="watch-btn">WATCH ON YOUTUBE &#8599;</a>
            </div>
          </div>
        </div>

        <!-- Slide 3: Etingli -->
        <div class="video-slide">
          <div class="video-slide-inner">
            <div class="video-slide-embed">
              <iframe src="https://www.youtube.com/embed/NTYtms36H9M" title="Dufla Diligon - Etingli" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen loading="lazy"></iframe>
            </div>
            <div class="video-slide-info">
              <div class="track-num">03</div>
              <h3>ETINGLI</h3>
              <div class="feat">&#9733; Dufla Diligon &nbsp;|&nbsp; Dancehall / Afrobeat</div>
              <p>Deep Northern Kenyan roots meet contemporary dancehall rhythms. Etingli is a celebration of identity, culture and the sounds of home &mdash; authentic Dufla Diligon storytelling.</p>
              <a href="https://www.youtube.com/watch?v=NTYtms36H9M" target="_blank" class="watch-btn">WATCH ON YOUTUBE &#8599;</a>
            </div>
          </div>
        </div>

        <!-- Slide 4: Achamoyong ft. Saningo -->
        <div class="video-slide">
          <div class="video-slide-inner">
            <div class="video-slide-embed">
              <iframe src="https://www.youtube.com/embed/gvsjDf3jH50" title="Saningo Dimero ft Dufla Diligon - Achamoyong" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen loading="lazy"></iframe>
            </div>
            <div class="video-slide-info">
              <div class="track-num">04</div>
              <h3>ACHAMOYONG</h3>
              <div class="feat">&#9733; ft. Saningo Dimero &nbsp;|&nbsp; Afrobeat / Cultural</div>
              <p>A meaningful regional collaboration with Saningo Dimero, blending Samburu cultural sounds with contemporary African music. A track rooted in community, identity and the Northern Kenya story.</p>
              <a href="https://www.youtube.com/watch?v=gvsjDf3jH50" target="_blank" class="watch-btn">WATCH ON YOUTUBE &#8599;</a>
            </div>
          </div>
        </div>

      </div><!-- /track -->

      <div class="slider-dots" id="sliderDots">
        <button class="slider-dot active" data-idx="0"></button>
        <button class="slider-dot" data-idx="1"></button>
        <button class="slider-dot" data-idx="2"></button>
        <button class="slider-dot" data-idx="3"></button>
      </div>
    </div><!-- /wrapper -->
  </section>

  <!-- ── MORE VIDEOS GRID ── -->
  <section class="videos-grid-section">
    <div class="container">
      <h2>MORE FROM <span class="text-red">DUFLA DILIGON</span></h2>
      <div class="video-grid">

        <a class="video-card" href="https://www.youtube.com/watch?v=bd77wL5r-Ck" target="_blank">
          <div class="video-thumb">
            <img src="https://img.youtube.com/vi/bd77wL5r-Ck/hqdefault.jpg" alt="Donjo Maber" loading="lazy">
            <div class="play-overlay"><div class="play-icon"></div></div>
          </div>
          <div class="video-card-info">
            <div class="video-card-title">Donjo Maber</div>
            <div class="video-card-meta">ft. Iyanii &bull; Official Video</div>
          </div>
        </a>

        <a class="video-card" href="https://www.youtube.com/watch?v=UvXZw2tWkhQ" target="_blank">
          <div class="video-thumb">
            <img src="https://img.youtube.com/vi/UvXZw2tWkhQ/hqdefault.jpg" alt="Rumours" loading="lazy">
            <div class="play-overlay"><div class="play-icon"></div></div>
          </div>
          <div class="video-card-info">
            <div class="video-card-title">Rumours</div>
            <div class="video-card-meta">ft. Iyanii &bull; Official Video</div>
          </div>
        </a>

        <a class="video-card" href="https://www.youtube.com/watch?v=NTYtms36H9M" target="_blank">
          <div class="video-thumb">
            <img src="https://img.youtube.com/vi/NTYtms36H9M/hqdefault.jpg" alt="Etingli" loading="lazy">
            <div class="play-overlay"><div class="play-icon"></div></div>
          </div>
          <div class="video-card-info">
            <div class="video-card-title">Etingli</div>
            <div class="video-card-meta">Dufla Diligon &bull; Official Video</div>
          </div>
        </a>

        <a class="video-card" href="https://www.youtube.com/watch?v=gvsjDf3jH50" target="_blank">
          <div class="video-thumb">
            <img src="https://img.youtube.com/vi/gvsjDf3jH50/hqdefault.jpg" alt="Achamoyong" loading="lazy">
            <div class="play-overlay"><div class="play-icon"></div></div>
          </div>
          <div class="video-card-info">
            <div class="video-card-title">Achamoyong</div>
            <div class="video-card-meta">ft. Saningo Dimero &bull; Collaboration</div>
          </div>
        </a>

      </div>
    </div>
  </section>

  <!-- Subscribe CTA -->
  <section class="subscribe-cta">
    <div class="container">
      <h2>DUFLA DILIGON TV</h2>
      <p>Subscribe for new music videos, performances, collaborations, behind-the-scenes and more.</p>
      <a href="https://youtube.com/@duflamusic?si=NporpgNPWeEd60oz" target="_blank" class="btn btn-red" style="font-size:1rem; padding:18px 40px;">SUBSCRIBE ON YOUTUBE &#8599;</a>
    </div>
  </section>

  <!-- Slider Script -->
  <script>
    (function(){
      var track = document.getElementById('sliderTrack');
      var dots = document.querySelectorAll('.slider-dot');
      var slides = document.querySelectorAll('.video-slide');
      var total = slides.length;
      var current = 0;

      function goTo(idx) {
        current = (idx + total) % total;
        track.style.transform = 'translateX(-' + (current * 100) + '%)';
        dots.forEach(function(d){ d.classList.remove('active'); });
        dots[current].classList.add('active');
      }

      document.getElementById('sliderPrev').addEventListener('click', function(){ goTo(current - 1); });
      document.getElementById('sliderNext').addEventListener('click', function(){ goTo(current + 1); });
      dots.forEach(function(d){
        d.addEventListener('click', function(){ goTo(parseInt(d.getAttribute('data-idx'))); });
      });

      // Auto-advance every 8s (pause on hover)
      var timer = setInterval(function(){ goTo(current + 1); }, 8000);
      track.parentElement.addEventListener('mouseenter', function(){ clearInterval(timer); });
      track.parentElement.addEventListener('mouseleave', function(){ timer = setInterval(function(){ goTo(current + 1); }, 8000); });

      // Touch swipe support
      var startX = 0;
      track.addEventListener('touchstart', function(e){ startX = e.touches[0].clientX; }, {passive:true});
      track.addEventListener('touchend', function(e){
        var diff = startX - e.changedTouches[0].clientX;
        if(Math.abs(diff) > 50){ goTo(diff > 0 ? current + 1 : current - 1); }
      });
    })();
  </script>

$footer
"@

Set-Content music-videos.html -Value $musicVideosPage -Encoding UTF8
