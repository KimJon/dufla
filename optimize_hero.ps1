$html = Get-Content index.html -Raw

# 1. Remove the social proof banner entirely
$bannerRegex = '(?s)<div style="background:var\(--maasai-red\); padding:15px; display:flex; justify-content:center; gap:40px; flex-wrap:wrap; font-size:0\.85rem; font-weight:700; text-transform:uppercase; letter-spacing:2px; color:var\(--white\); box-shadow:0 5px 15px rgba\(0,0,0,0\.5\); z-index:10;">.*?</div>'
$html = $html -replace $bannerRegex, ''

# 2. Add Mobile Optimization to the hero CSS in index.html
$oldHeroCssEnd = "100% { opacity: 0; }`n    }"
$mobileCss = @"
100% { opacity: 0; }
    }
    
    /* Mobile Optimization for Hero */
    @media (max-width: 768px) {
      #hero {
        padding: 0 20px;
      }
      .hero-content h1 {
        font-size: 3.5rem !important; /* Slightly smaller for very small screens */
        line-height: 1.1;
      }
      .hero-content p {
        font-size: 1rem !important;
      }
      .hero-buttons {
        gap: 10px;
        flex-direction: column;
        width: 100%;
      }
      .hero-buttons .btn {
        width: 100%;
      }
    }
"@
$html = $html -replace [regex]::Escape($oldHeroCssEnd), $mobileCss

Set-Content index.html -Value $html -Encoding UTF8
