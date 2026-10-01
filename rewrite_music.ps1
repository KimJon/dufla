$html = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Music & Videos | Dufla Diligon</title>
  <meta name="description" content="Watch the latest music videos from Dufla Diligon including Donjo Maber, Rumours, Etingli, and Achamoyong.">
  <link rel="stylesheet" href="style.css">
  <style>
    .page-header { background-image: url('dufla2.JPG'); }
    .videos-grid-section { padding: 80px 20px; background: var(--earth-dark); }
    .video-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(400px, 1fr)); gap: 40px; max-width: 1200px; margin: 0 auto; }
    .video-card { background: rgba(0,0,0,0.5); border: 1px solid rgba(255,255,255,0.1); transition: transform 0.3s; }
    .video-card:hover { transform: translateY(-5px); border-color: var(--maasai-red); }
    .video-frame { position: relative; aspect-ratio: 16/9; background: #000; overflow: hidden; }
    .video-info { padding: 20px; text-align: left; }
    .video-title { font-weight: 700; font-size: 1.2rem; margin-bottom: 5px; color: var(--white); }
    .video-meta { font-size: 0.85rem; color: #888; text-transform: uppercase; letter-spacing: 1px; }
    @media(max-width:768px){
      .video-grid { grid-template-columns: 1fr; gap: 20px; }
    }
  </style>
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "MusicGroup",
  "name": "Dufla Diligon",
  "url": "https://dufladiligon.com",
  "image": "https://dufladiligon.com/dufla%201.JPG",
  "sameAs": [
    "https://www.facebook.com/share/1Dr2cRrCRw/",
    "https://instagram.com/dufladiligon",
    "https://youtube.com/@duflamusic?si=NporpgNPWeEd60oz",
    "https://www.tiktok.com/@dufladiligon?_r=1&_t=ZS-9A8BRUnoHFk"
  ]
}
</script>
</head>
<body>
  <nav id="navbar">
    <a href="index.html" class="nav-logo">DUFLA<span>DILIGON</span></a>
    <ul class="nav-links">
      <li><a href="index.html">HOME</a></li>
      <li><a href="about.html">ABOUT DUFLA</a></li>
      <li><a href="music-videos.html" class="active">MUSIC & VIDEOS</a></li>
      <li><a href="events.html">NEWS & EVENTS</a></li>
      <li><a href="10-years.html">10 YEARS</a></li>
      <li><a href="support-partnerships.html">SUPPORT & PARTNERSHIPS</a></li>
      <li><a href="book-dufla.html">BOOK DUFLA</a></li>
    </ul>
    <div class="hamburger" id="hamburger"><span></span><span></span><span></span></div>
  </nav>
  <div class="mobile-menu" id="mobileMenu">
    <a href="index.html">HOME</a>
    <a href="about.html">ABOUT DUFLA</a>
    <a href="music-videos.html">MUSIC & VIDEOS</a>
    <a href="events.html">NEWS & EVENTS</a>
    <a href="10-years.html">10 YEARS</a>
    <a href="support-partnerships.html">SUPPORT & PARTNERSHIPS</a>
    <a href="book-dufla.html">BOOK DUFLA</a>
  </div>

  <header class="page-header">
    <div class="container">
      <h1 class="cinematic-text">MUSIC & <span class="text-yellow">VIDEOS</span></h1>
      <div class="bead-divider"><div class="bead yellow"></div><div class="bead red"></div><div class="bead blue"></div></div>
      <p class="cinematic-text" style="font-size:1.1rem; margin-top:10px; letter-spacing:3px;">THE LATEST RELEASES</p>
    </div>
  </header>

  <section class="videos-grid-section text-center">
    <div class="video-grid">
      
      <!-- Video 1 -->
      <div class="video-card">
        <div class="video-frame">
          <iframe width="100%" height="100%" src="https://www.youtube.com/embed/bd77wL5r-Ck" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto;object-fit:cover;height:100%}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black;transition:transform 0.2s}a:hover span{transform:scale(1.1)}</style><a href=https://www.youtube.com/embed/bd77wL5r-Ck?autoplay=1><img src=https://img.youtube.com/vi/bd77wL5r-Ck/maxresdefault.jpg alt='Donjo Maber'><span>&#x25BA;</span></a>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <div class="video-info">
          <div class="video-title">Donjo Maber</div>
          <div class="video-meta">Dufla Diligon ft. Iyanii</div>
        </div>
      </div>

      <!-- Video 2 -->
      <div class="video-card">
        <div class="video-frame">
          <iframe width="100%" height="100%" src="https://www.youtube.com/embed/UvXZw2tWkhQ" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto;object-fit:cover;height:100%}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black;transition:transform 0.2s}a:hover span{transform:scale(1.1)}</style><a href=https://www.youtube.com/embed/UvXZw2tWkhQ?autoplay=1><img src=https://img.youtube.com/vi/UvXZw2tWkhQ/maxresdefault.jpg alt='Rumours'><span>&#x25BA;</span></a>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <div class="video-info">
          <div class="video-title">Rumours</div>
          <div class="video-meta">Dufla Diligon ft. Iyanii</div>
        </div>
      </div>

      <!-- Video 3 -->
      <div class="video-card">
        <div class="video-frame">
          <iframe width="100%" height="100%" src="https://www.youtube.com/embed/NTYtms36H9M" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto;object-fit:cover;height:100%}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black;transition:transform 0.2s}a:hover span{transform:scale(1.1)}</style><a href=https://www.youtube.com/embed/NTYtms36H9M?autoplay=1><img src=https://img.youtube.com/vi/NTYtms36H9M/maxresdefault.jpg alt='Etingli'><span>&#x25BA;</span></a>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <div class="video-info">
          <div class="video-title">Etingli</div>
          <div class="video-meta">Dufla Diligon</div>
        </div>
      </div>

      <!-- Video 4 -->
      <div class="video-card">
        <div class="video-frame">
          <iframe width="100%" height="100%" src="https://www.youtube.com/embed/gvsjDf3jH50" srcdoc="<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto;object-fit:cover;height:100%}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black;transition:transform 0.2s}a:hover span{transform:scale(1.1)}</style><a href=https://www.youtube.com/embed/gvsjDf3jH50?autoplay=1><img src=https://img.youtube.com/vi/gvsjDf3jH50/maxresdefault.jpg alt='Achamoyong'><span>&#x25BA;</span></a>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <div class="video-info">
          <div class="video-title">Achamoyong</div>
          <div class="video-meta">Saningo Dimero ft. Dufla Diligon</div>
        </div>
      </div>

    </div>
    
    <div style="margin-top: 60px;">
      <a href="https://youtube.com/@duflamusic?si=NporpgNPWeEd60oz" target="_blank" class="btn btn-outline">VIEW ALL ON YOUTUBE</a>
    </div>
  </section>

  <footer>
    <div class="container">
      <div class="footer-logo">DUFLA<span class="text-red">DILIGON</span></div>
      <p style="color:var(--maasai-yellow); letter-spacing:2px; font-weight:600; font-size:0.9rem; margin-bottom:40px; text-transform:uppercase;">Music. Culture. Peace. Unity.</p>
      
      <div class="footer-grid">
        <ul class="footer-links">
          <li><a href="index.html">Home</a></li>
          <li><a href="about.html">About Dufla</a></li>
          <li><a href="music-videos.html">Music & Videos</a></li>
          <li><a href="events.html">News & Events</a></li>
        </ul>
        <ul class="footer-links">
          <li><a href="10-years.html">10 Years</a></li>
          <li><a href="support-partnerships.html">Support & Partnerships</a></li>
          <li><a href="book-dufla.html">Book Dufla</a></li>
        </ul>
        <ul class="footer-links">
          <li class="footer-title">Follow Dufla Diligon</li>
          <li><a href="https://www.tiktok.com/@dufladiligon?_r=1&_t=ZS-9A8BRUnoHFk" target="_blank">TikTok</a></li>
          <li><a href="https://instagram.com/dufladiligon" target="_blank">Instagram</a></li>
          <li><a href="https://www.facebook.com/share/1Dr2cRrCRw/" target="_blank">Facebook</a></li>
          <li><a href="https://youtube.com/@duflamusic?si=NporpgNPWeEd60oz" target="_blank">YouTube</a></li>
        </ul>
      </div>

      <div class="footer-bottom">
        <p>&copy; 2026 Dufla Diligon. All Rights Reserved. | <a href="privacy.html">Privacy Policy</a> | <a href="terms.html">Terms & Conditions</a></p>
        <p style="margin-top:10px;">Powered by <strong>Extra Levels Marketing</strong></p>
      </div>
    </div>
  </footer>
  <script>
    window.addEventListener('scroll', () => {
      const nav = document.getElementById('navbar');
      if (nav) nav.classList.toggle('scrolled', window.scrollY > 50);
    });
    
    const h = document.getElementById('hamburger');
    const m = document.getElementById('mobileMenu');
    if(h && m) { 
      h.addEventListener('click', () => { 
        h.classList.toggle('active');
        m.classList.toggle('open'); 
      }); 
    }
  </script>
</body>
</html>
"@

Set-Content music-videos.html -Value $html -Encoding UTF8
Write-Host "music-videos.html rewritten!"
