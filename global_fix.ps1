$htmlFiles = Get-ChildItem -Filter *.html

$ga4 = @"
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
"@

$schemaOrg = @"
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
"@

$navHtml = @"
  <nav id="navbar">
    <a href="index.html" class="nav-logo">DUFLA<span>DILIGON</span></a>
    <ul class="nav-links">
      <li><a href="index.html">HOME</a></li>
      <li><a href="about.html">ABOUT DUFLA</a></li>
      <li><a href="music-videos.html">MUSIC & VIDEOS</a></li>
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
"@

$footerHtml = @"
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
        <p>&copy; 2026 Dufla Diligon. All Rights Reserved. | <a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a></p>
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

foreach ($file in $htmlFiles) {
    $c = Get-Content $file.FullName -Raw

    # Replace Nav
    $c = $c -replace '(?s)<nav id="navbar">.*?</nav>\s*<div class="mobile-menu" id="mobileMenu">.*?</div>', $navHtml
    
    # Replace Footer
    $c = $c -replace '(?s)<footer>.*?</html>', $footerHtml
    
    # Inject SEO Schema & GA4 before </head>
    if ($c -notmatch 'application/ld\+json') {
        $c = $c -replace '</head>', "`n$schemaOrg`n$ga4`n</head>"
    }

    Set-Content $file.FullName -Value $c -Encoding UTF8
}

Write-Host "Global HTML consistency applied!"
