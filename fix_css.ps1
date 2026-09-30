$css = Get-Content style.css -Raw

$newCss = @"

/* --- RECENT UI/UX FIXES --- */

/* 1. Footer Alignment */
.footer-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 40px;
  margin-bottom: 40px;
  text-align: left;
}
.footer-links {
  list-style: none;
  line-height: 2;
}
.footer-links .footer-title {
  color: #fff;
  font-weight: 700;
  margin-bottom: 5px;
  display: block;
}

/* 2. Hamburger Close Sign (X animation) */
.hamburger.active span:nth-child(1) {
  transform: translateY(8px) rotate(45deg);
}
.hamburger.active span:nth-child(2) {
  opacity: 0;
}
.hamburger.active span:nth-child(3) {
  transform: translateY(-8px) rotate(-45deg);
}

/* 3. Mobile Event Card Congestion Fixes */
@media (max-width: 768px) {
  .home-section .container > div[style*="display:grid"] {
    grid-template-columns: 1fr !important;
    gap: 30px !important;
  }
  .ev-card .poster-wrap img, .home-section img[src="charity-poster-new.jpg"] {
    max-height: 350px !important;
  }
  .ev-card.concert-card .poster-wrap {
    height: 350px !important;
  }
  .form-inner {
    grid-template-columns: 1fr !important;
  }
}
"@

if ($css -notmatch "RECENT UI/UX FIXES") {
    $css = $css + "`n" + $newCss
}

Set-Content style.css -Value $css -Encoding UTF8
Write-Host "CSS fixes applied!"
