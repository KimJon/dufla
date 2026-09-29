$html = Get-Content index.html -Raw

# 1. Fix the encoding error in the social proof bar
$html = $html -replace "~\.\s*", "&#9733; "

# 2. Add slideshow CSS to <style>
$oldHeroCss = "(?s)#hero \{.*?#hero::before \{.*?\}"
$newHeroCss = @"
    /* Slideshow Hero */
    #hero { 
      height: 100vh; position: relative; display: flex; flex-direction: column; 
      justify-content: center; align-items: center; text-align: center; overflow: hidden;
    }
    .hero-slideshow {
      position: absolute; inset: 0; z-index: 0;
    }
    .hero-slideshow div {
      position: absolute; inset: 0; background-size: cover; background-position: center top;
      opacity: 0; animation: slideShow 24s infinite;
    }
    /* Adjusted gradient: less dark in the middle to make images more visible, fading to dark at bottom edges */
    #hero::before { 
      content: ''; position: absolute; inset: 0; z-index: 1;
      background: radial-gradient(circle at center, rgba(10,10,10,0.1) 0%, rgba(10,10,10,0.85) 100%),
                  linear-gradient(to bottom, rgba(10,10,10,0.3) 0%, rgba(10,10,10,0) 50%, var(--earth-dark) 100%);
    }
    
    .hero-slideshow div:nth-child(1) { background-image: url('dufla 1.JPG'); animation-delay: 0s; }
    .hero-slideshow div:nth-child(2) { background-image: url('dufla2.JPG'); animation-delay: 6s; }
    .hero-slideshow div:nth-child(3) { background-image: url('dufla3.JPG'); animation-delay: 12s; }
    .hero-slideshow div:nth-child(4) { background-image: url('dufla5.JPG'); animation-delay: 18s; }

    @keyframes slideShow {
      0% { opacity: 0; transform: scale(1.05); }
      10% { opacity: 1; transform: scale(1); }
      25% { opacity: 1; transform: scale(1); }
      35% { opacity: 0; transform: scale(1.05); }
      100% { opacity: 0; }
    }
"@
$html = $html -replace $oldHeroCss, $newHeroCss

# 3. Add the HTML for the slideshow inside <header id="hero">
# The current is just <header id="hero">\n    <div class="hero-content container">
$oldHeroHtml = '<header id="hero">'
$newHeroHtml = @"
  <header id="hero">
    <div class="hero-slideshow">
      <div></div><div></div><div></div><div></div>
    </div>
"@
$html = $html -replace $oldHeroHtml, $newHeroHtml

Set-Content index.html -Value $html -Encoding UTF8
