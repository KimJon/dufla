$nav = @"
  <nav id="navbar">
    <a href="index.html" class="nav-logo">DUFLA<span>DILIGON</span></a>
    <ul class="nav-links">
      <li><a href="index.html">HOME</a></li>
      <li><a href="about.html">ABOUT DUFLA</a></li>
      <li><a href="music-videos.html">MUSIC & VIDEOS</a></li>
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
      <p style="color:var(--maasai-yellow); letter-spacing:2px; font-weight:600; font-size:0.9rem; margin-bottom: 40px; text-transform:uppercase;">Music. Culture. Peace. Unity.</p>
      
      <div style="display:flex; justify-content:center; gap: 40px; flex-wrap:wrap; margin-bottom: 40px;">
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
          <li><a href="https://tiktok.com/@dufladiligon" target="_blank">TikTok</a></li>
          <li><a href="https://instagram.com/dufladiligon" target="_blank">Instagram</a></li>
          <li><a href="https://facebook.com/dufladiligon" target="_blank">Facebook</a></li>
          <li><a href="https://youtube.com/@dufladiligontv" target="_blank">YouTube</a></li>
        </ul>
      </div>

      <div class="footer-bottom">
        <p>&copy; 2026 Dufla Diligon. All Rights Reserved. | <a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a></p>
        <p style="margin-top:10px;">Website by <strong>Haxor Management & Technology Consultants</strong></p>
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

$files = @("about.html", "10-years.html", "support-partnerships.html", "gallery.html")

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = Get-Content $file -Raw
        
        # Replace Nav
        $content = $content -replace '(?s)<nav id="navbar">.*?</nav>\s*<div class="mobile-menu" id="mobileMenu">.*?</div>', $nav
        
        # Replace Footer
        $content = $content -replace '(?s)<footer>.*</html>', $footer
        
        Set-Content $file -Value $content -Encoding UTF8
    }
}
