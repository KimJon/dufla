import os

# New Navigation HTML
nav_html = """  <nav id="navbar">
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
  </div>"""

# New Footer HTML
footer_html = """  <footer>
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
</html>"""

def build_page(filename, title, extra_css, body_content):
    html = f"""<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{title}</title>
  <meta name="description" content="Official digital home of Kenyan recording and performing artist Dufla Diligon. Music, Culture, Peace, Unity.">
  <link rel="stylesheet" href="style.css">
  <style>{extra_css}</style>
</head>
<body>
{nav_html}
{body_content}
{footer_html}"""
    
    # Simple active state hack
    html = html.replace(f'href="{filename}"', f'href="{filename}" class="active"')
    
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(html)

def main():
    os.chdir(r"c:\Users\Admin\Desktop\dufla diligon")
    
    # Rename old files to match new architecture
    if os.path.exists("concert.html"): os.rename("concert.html", "10-years.html")
    if os.path.exists("sponsorship.html"): os.rename("sponsorship.html", "support-partnerships.html")
    
    # 1. Update style.css to support new Nav
    with open("style.css", "r", encoding='utf-8') as f:
        css = f.read()
    if ".nav-links {" in css:
        css = css.replace("gap: 40px;", "gap: 20px;") # Fit 8 items
        css = css.replace("font-size: 0.8rem;", "font-size: 0.75rem;") 
    with open("style.css", "w", encoding='utf-8') as f:
        f.write(css)

    # 2. Rebuild index.html (Homepage)
    hero_css = """
    #hero { height: 100vh; background: url('DSC09022.JPG') center/cover no-repeat; display: flex; flex-direction: column; justify-content: center; align-items: center; position: relative; text-align: center; }
    #hero::before { content: ''; position: absolute; inset: 0; background: radial-gradient(circle at center, rgba(14,41,84,0.3) 0%, rgba(10,10,10,0.9) 100%); }
    .hero-content { position: relative; z-index: 2; margin-top: 50px; }
    .hero-buttons { display: flex; gap: 20px; justify-content: center; margin-top: 40px; flex-wrap: wrap; }
    .home-section { padding: 100px 0; border-bottom: 1px solid rgba(255,255,255,0.05); }
    .home-section h2 { margin-bottom: 20px; color: var(--maasai-yellow); }
    """
    home_body = """
  <header id="hero">
    <div class="hero-content container">
      <div style="font-size: 1.2rem; letter-spacing: 6px; color: var(--maasai-yellow); font-weight: 600; margin-bottom: 10px;">MUSIC. CULTURE. PEACE. UNITY.</div>
      <h1 class="cinematic-text" style="font-size:clamp(4rem, 10vw, 8rem);">DUFLA<br><span class="text-red">DILIGON</span></h1>
      <p class="cinematic-text" style="font-size: 1.2rem; margin-top: 20px; max-width: 600px; margin-left: auto; margin-right: auto;">From Baragoi to the regional stage, Dufla Diligon continues to use music to tell stories, celebrate culture and connect communities.</p>
      
      <div class="hero-buttons">
        <a href="music-videos.html" class="btn btn-red">LISTEN & WATCH</a>
        <a href="book-dufla.html" class="btn btn-outline">BOOK DUFLA</a>
        <a href="10-years.html" class="btn" style="background:var(--white); color:var(--earth-dark);">10 YEARS ANNIVERSARY</a>
      </div>
    </div>
  </header>

  <section class="home-section" style="background: var(--maasai-blue); text-align: center;">
    <div class="container">
      <h2>FROM BARAGOI TO THE REGIONAL STAGE</h2>
      <div class="bead-divider"><div class="bead red"></div><div class="bead yellow"></div><div class="bead white" style="background:#fff; width:12px; height:12px; border-radius:50%;"></div></div>
      <p style="font-size: 1.2rem;">Born and raised in Baragoi, Samburu County, Dufla Diligon's artistic journey is deeply connected to the culture, people and experiences of Northern Kenya. From his early life herding livestock to more than a decade of music, performance and collaboration, his journey has grown from local roots into a wider regional platform.</p>
      <div style="margin-top:40px;"><a href="about.html" class="btn btn-outline">READ DUFLA'S STORY &rarr;</a></div>
    </div>
  </section>

  <section class="home-section" style="text-align: center;">
    <div class="container">
      <h2>WATCH DUFLA DILIGON</h2>
      <p style="margin-bottom: 40px;">Music videos, performances, collaborations, interviews and moments from the journey.</p>
      <div style="aspect-ratio:16/9; background:#111; display:flex; align-items:center; justify-content:center; border: 2px solid var(--maasai-red); margin-bottom: 40px;">
        <p style="color:var(--grey);">[FEATURED YOUTUBE VIDEO PLAYER]</p>
      </div>
      <div class="hero-buttons">
        <a href="music-videos.html" class="btn btn-outline">VIEW ALL MUSIC & VIDEOS</a>
        <a href="https://youtube.com/@dufladiligontv" target="_blank" class="btn btn-red">SUBSCRIBE ON YOUTUBE</a>
      </div>
    </div>
  </section>
"""
    build_page("index.html", "Dufla Diligon | Official Website", hero_css, home_body)

    # 3. Rebuild about.html
    # (Read old about.html content and inject into new template)
    try:
        with open("about.html", "r", encoding='utf-8') as f:
            old_about = f.read()
        about_body = old_about.split('</nav>')[1].split('<footer>')[0]
        # Remove old mobile menu
        if '<div class="mobile-menu"' in about_body:
            about_body = about_body.split('</div>', 1)[1]
    except:
        about_body = "<section class='section container'><h2>ABOUT DUFLA</h2><p>Biography content here...</p></section>"
    
    build_page("about.html", "About Dufla Diligon | David Longoji Ikiru", ".page-header { background-image: url('DSC08994.JPG'); }", about_body)

    # 4. Rebuild 10-years.html (from concert.html)
    try:
        with open("10-years.html", "r", encoding='utf-8') as f:
            old_10y = f.read()
        y10_body = old_10y.split('</nav>')[1].split('<footer>')[0]
        if '<div class="mobile-menu"' in y10_body:
            y10_body = y10_body.split('</div>', 1)[1]
    except:
        y10_body = "<section class='section container'><h2>10 YEARS</h2></section>"
    
    build_page("10-years.html", "Dufla Diligon 10 Years Anniversary Unity Concert", ".page-header { background-image: url('DSC09018.JPG'); }", y10_body)

    # 5. Rebuild support-partnerships.html
    try:
        with open("support-partnerships.html", "r", encoding='utf-8') as f:
            old_support = f.read()
        support_body = old_support.split('</nav>')[1].split('<footer>')[0]
        if '<div class="mobile-menu"' in support_body:
            support_body = support_body.split('</div>', 1)[1]
    except:
        support_body = "<section class='section container'><h2>SUPPORT</h2></section>"
    
    support_css = """
    .page-header { background-image: url('DSC09024.JPG'); }
    .proposal-section { margin-bottom: 60px; }
    .proposal-section h3 { color: var(--maasai-yellow); font-size: 1.8rem; margin-bottom: 20px; text-transform: uppercase; letter-spacing: 2px; }
    .proposal-section p, .proposal-section ul { font-size: 1.1rem; line-height: 1.8; color: #ccc; margin-bottom: 20px; }
    .proposal-section ul { list-style: none; padding-left: 0; }
    .proposal-section ul li { margin-bottom: 15px; padding-left: 25px; position: relative; }
    .proposal-section ul li::before { content: '✦'; position: absolute; left: 0; color: var(--maasai-red); }
    .grid-2 { display: grid; grid-template-columns: 1fr 1fr; gap: 40px; margin-top: 40px; }
    .card { background: rgba(255,255,255,0.03); border: 1px solid rgba(255,255,255,0.1); padding: 40px; }
    .card h4 { color: var(--maasai-red); font-size: 1.2rem; margin-bottom: 15px; }
    .budget-table { width: 100%; border-collapse: collapse; margin-top: 20px; font-size: 1.1rem; }
    .budget-table th, .budget-table td { padding: 15px; text-align: left; border-bottom: 1px solid rgba(255,255,255,0.1); }
    .budget-table th { color: var(--maasai-yellow); text-transform: uppercase; letter-spacing: 1px; }
    .marketing-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; margin-top: 30px; }
    .marketing-col { background: rgba(14, 41, 84, 0.3); padding: 30px; border-top: 3px solid var(--maasai-red); }
    .tiers-container { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 30px; margin-top: 60px; }
    .tier-card { background: rgba(255,255,255,0.03); border: 1px solid rgba(255,255,255,0.1); padding: 50px 30px; text-align: center; }
    .contact-section { background: url('DSC09030.JPG') center/cover fixed; padding: 120px 0; text-align: center; margin-top: 80px; position: relative; }
    .contact-section::before { content: ''; position: absolute; inset: 0; background: rgba(10,10,10,0.9); }
    .contact-content { position: relative; z-index: 2; }
    .contact-grid { display: flex; justify-content: center; gap: 60px; margin-top: 50px; flex-wrap: wrap; }
    .contact-card { background: rgba(0,0,0,0.5); padding: 40px; border: 1px solid var(--maasai-red); }
    """
    build_page("support-partnerships.html", "Support & Partnerships | Dufla Diligon", support_css, support_body)

    # 6. Create music-videos.html
    mv_css = ".page-header { background-image: url('DSC09079.JPG'); } .mv-grid { display:grid; grid-template-columns:repeat(auto-fit, minmax(300px, 1fr)); gap:20px; }"
    mv_body = """
  <header class="page-header">
    <div class="container">
      <h1 class="cinematic-text">MUSIC & <span class="text-yellow">VIDEOS</span></h1>
      <p class="cinematic-text" style="font-size:1.2rem; color:var(--maasai-yellow); margin-top:10px;">Listen. Watch. Experience the journey.</p>
    </div>
  </header>
  <section class="section container" style="text-align:center;">
    <h2>DUFLA DILIGON TV</h2>
    <p>Official music videos, playlists, and live performances.</p>
    <a href="https://youtube.com/@dufladiligontv" target="_blank" class="btn btn-red" style="margin-top:30px;">SUBSCRIBE ON YOUTUBE</a>
  </section>
"""
    build_page("music-videos.html", "Dufla Diligon Music & Videos | DUFLA DILIGON TV", mv_css, mv_body)

    # 7. Create book-dufla.html
    book_css = ".page-header { background-image: url('DSC09022.JPG'); } .form-group { margin-bottom: 20px; text-align:left; } .form-control { width:100%; padding:15px; background:rgba(255,255,255,0.05); border:1px solid rgba(255,255,255,0.1); color:#fff; font-family:var(--font-body); }"
    book_body = """
  <header class="page-header">
    <div class="container">
      <h1 class="cinematic-text">BOOK <span class="text-red">DUFLA</span></h1>
      <p class="cinematic-text" style="font-size:1.2rem; margin-top:10px;">Bring the music, energy and cultural perspective of Dufla Diligon to your next event.</p>
    </div>
  </header>
  <section class="section container" style="max-width:800px; text-align:center;">
    <h2>Booking Request</h2>
    <p style="margin-bottom:40px;">Please fill out the form below for concerts, festivals, corporate events, and media appearances.</p>
    <form style="background:rgba(255,255,255,0.03); padding:40px; border:1px solid var(--maasai-red);">
      <div class="form-group"><input type="text" class="form-control" placeholder="Full Name / Organization"></div>
      <div class="form-group"><input type="email" class="form-control" placeholder="Email Address"></div>
      <div class="form-group"><input type="text" class="form-control" placeholder="Event Type & Location"></div>
      <div class="form-group"><textarea class="form-control" rows="5" placeholder="Additional Information"></textarea></div>
      <button type="button" class="btn btn-red" style="width:100%; font-size:1rem;">SUBMIT BOOKING REQUEST</button>
    </form>
    <div style="margin-top:40px;">
      <a href="#" class="btn btn-outline">WHATSAPP THE TEAM</a>
    </div>
  </section>
"""
    build_page("book-dufla.html", "Book Dufla Diligon | Kenyan Recording & Performing Artist", book_css, book_body)

    # 8. Create news.html & events.html
    build_page("news.html", "Dufla Diligon News, Music & Events", ".page-header { background-image: url('DSC08994.JPG'); }", "<header class='page-header'><div class='container'><h1>NEWS</h1></div></header><section class='section container'><p>Latest announcements coming soon.</p></section>")
    build_page("events.html", "Dufla Diligon Events | Performances & Concerts", ".page-header { background-image: url('DSC09018.JPG'); }", "<header class='page-header'><div class='container'><h1>EVENTS</h1></div></header><section class='section container' style='text-align:center;'><h2>Upcoming</h2><div style='margin:40px 0;'><a href='10-years.html' class='btn btn-red'>10 YEARS ANNIVERSARY UNITY CONCERT</a></div></section>")

if __name__ == "__main__":
    main()
