$nav = @"
  <nav id="navbar">
    <a href="index.html" class="nav-logo">DUFLA<span>DILIGON</span></a>
    <ul class="nav-links">
      <li><a href="index.html">HOME</a></li>
      <li><a href="about.html">ABOUT DUFLA</a></li>
      <li><a href="music-videos.html" class="active-mv">MUSIC & VIDEOS</a></li>
      <li><a href="events.html" class="active-ev">EVENTS</a></li>
      <li><a href="10-years.html">10 YEARS</a></li>
      <li><a href="support-partnerships.html">SUPPORT & PARTNERSHIPS</a></li>
      <li><a href="news.html" class="active-nw">NEWS</a></li>
      <li><a href="book-dufla.html" class="active-bk">BOOK DUFLA</a></li>
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

function Build-Page ($file, $title, $css, $body) {
    $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$title</title>
  <meta name="description" content="Official digital home of Kenyan recording and performing artist Dufla Diligon.">
  <link rel="stylesheet" href="style.css">
  <style>$css</style>
</head>
<body>
$nav
$body
$footer
"@

    # Set active class dynamically based on filename
    if ($file -eq "music-videos.html") { $html = $html -replace 'class="active-mv"', 'class="active"' } else { $html = $html -replace 'class="active-mv"', '' }
    if ($file -eq "events.html") { $html = $html -replace 'class="active-ev"', 'class="active"' } else { $html = $html -replace 'class="active-ev"', '' }
    if ($file -eq "news.html") { $html = $html -replace 'class="active-nw"', 'class="active"' } else { $html = $html -replace 'class="active-nw"', '' }
    if ($file -eq "book-dufla.html") { $html = $html -replace 'class="active-bk"', 'class="active"' } else { $html = $html -replace 'class="active-bk"', '' }

    Set-Content $file -Value $html -Encoding UTF8
}

# 1. BOOK DUFLA
$bookCss = @"
.page-header { background-image: url('DSC08996.JPG'); }
.form-group { margin-bottom: 25px; text-align:left; }
.form-control { width:100%; padding:18px; background:rgba(255,255,255,0.03); border:1px solid rgba(255,255,255,0.2); color:#fff; font-family:var(--font-body); font-size:1rem; outline:none; transition:var(--transition); }
.form-control:focus { border-color:var(--maasai-yellow); background:rgba(255,255,255,0.06); }
.booking-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 60px; margin-top: 60px; }
.social-proof { display: grid; grid-template-columns: repeat(2, 1fr); gap: 15px; }
.social-proof img { width:100%; height:100%; object-fit:cover; aspect-ratio:1; border:2px solid var(--maasai-red); }
@media(max-width: 900px) { .booking-grid { grid-template-columns: 1fr; } }
"@
$bookBody = @"
  <header class="page-header">
    <div class="container">
      <h1 class="cinematic-text">BOOK <span class="text-red">DUFLA</span></h1>
      <div class="bead-divider"><div class="bead red"></div><div class="bead blue"></div><div class="bead yellow"></div></div>
      <p class="cinematic-text" style="font-size:1.2rem; margin-top:10px;">Bring the music, energy and cultural perspective of Dufla Diligon to your next event.</p>
    </div>
  </header>
  <section class="section container">
    <div class="booking-grid">
      <div>
        <h2 style="font-size: 2.5rem; margin-bottom: 20px;">The Live <span class="text-yellow">Experience</span></h2>
        <p style="margin-left:0; margin-bottom:30px; color:#ccc;">From electrifying festival stages to exclusive corporate events, Dufla Diligon brings an unparalleled Northern Kenyan energy mixed with contemporary African sounds.</p>
        
        <h3 style="color:var(--maasai-red); font-size:1.2rem; margin-bottom:15px;">Available For:</h3>
        <ul style="list-style:none; line-height:2; margin-bottom: 40px; color:#ddd;">
          <li>✦ Concerts & Festivals</li>
          <li>✦ Corporate Events</li>
          <li>✦ Cultural Events</li>
          <li>✦ Private Events</li>
          <li>✦ Brand Campaigns</li>
          <li>✦ Media Appearances</li>
        </ul>

        <h3 style="color:var(--white); font-size:1.2rem; margin-bottom:15px;">Performance Highlights</h3>
        <div class="social-proof">
          <img src="DSC09002.JPG" alt="Dufla Performing Live" loading="lazy">
          <img src="DSC09003.JPG" alt="Dufla on Stage" loading="lazy">
          <img src="DSC08998.JPG" alt="Dufla Energy" loading="lazy">
          <img src="DSC09001.JPG" alt="Dufla Cultural Performance" loading="lazy">
        </div>
      </div>

      <div style="background:rgba(255,255,255,0.02); padding:50px; border:1px solid rgba(255,255,255,0.05);">
        <h3 style="font-size:1.5rem; margin-bottom:10px;">Submit Booking Request</h3>
        <p style="font-size:0.9rem; color:#888; margin-bottom:30px;">Our management team will respond to all serious inquiries within 48 hours.</p>
        <form>
          <div class="form-group"><input type="text" class="form-control" placeholder="Full Name"></div>
          <div class="form-group"><input type="text" class="form-control" placeholder="Organization / Promoter"></div>
          <div class="form-group"><input type="email" class="form-control" placeholder="Email Address"></div>
          <div class="form-group"><input type="text" class="form-control" placeholder="Phone / WhatsApp Number"></div>
          <div class="form-group"><input type="text" class="form-control" placeholder="Event Type (e.g., Festival, Corporate)"></div>
          <div class="form-group"><input type="date" class="form-control" style="color:#aaa;"></div>
          <div class="form-group"><input type="text" class="form-control" placeholder="Location / Venue"></div>
          <div class="form-group"><input type="text" class="form-control" placeholder="Expected Audience Size"></div>
          <div class="form-group"><input type="text" class="form-control" placeholder="Budget Range (KES / USD)"></div>
          <div class="form-group"><textarea class="form-control" rows="4" placeholder="Additional Event Details..."></textarea></div>
          <button type="button" class="btn btn-red" style="width:100%; font-size:1rem; padding: 20px;">SUBMIT BOOKING REQUEST</button>
        </form>
        <div style="margin-top:30px; text-align:center;">
          <p style="font-size:0.8rem; color:#666; margin-bottom:15px;">Or contact management directly via WhatsApp for urgent bookings:</p>
          <a href="#" class="btn btn-outline" style="width:100%;">WHATSAPP THE TEAM</a>
        </div>
      </div>
    </div>
  </section>
"@
Build-Page "book-dufla.html" "Book Dufla Diligon | Official Booking" $bookCss $bookBody


# 2. MUSIC & VIDEOS
$mvCss = @"
.page-header { background-image: url('DSC09014.JPG'); }
.video-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 30px; margin-top: 40px; }
.video-card { background: var(--earth-dark); border: 1px solid rgba(255,255,255,0.05); transition: var(--transition); }
.video-card:hover { transform: translateY(-5px); border-color: var(--maasai-yellow); }
.video-thumb { width: 100%; aspect-ratio: 16/9; background: #111; position: relative; overflow: hidden; }
.video-thumb img { width: 100%; height: 100%; object-fit: cover; opacity: 0.8; transition: var(--transition); }
.video-card:hover img { opacity: 1; transform: scale(1.05); }
.play-btn { position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 60px; height: 60px; background: var(--maasai-red); border-radius: 50%; display: flex; align-items: center; justify-content: center; }
.play-btn::after { content: ''; border-top: 10px solid transparent; border-bottom: 10px solid transparent; border-left: 15px solid #fff; margin-left: 5px; }
.video-info { padding: 20px; text-align:left; }
.video-title { font-weight: 700; font-size: 1.1rem; margin-bottom: 5px; }
.video-meta { font-size: 0.8rem; color: #888; text-transform: uppercase; letter-spacing: 1px; }
.filters { display:flex; justify-content:center; gap:15px; flex-wrap:wrap; margin-bottom: 50px; }
.filter-btn { background:transparent; border:1px solid var(--white); color:var(--white); padding:10px 20px; cursor:pointer; font-size:0.8rem; letter-spacing:1px; text-transform:uppercase; transition:var(--transition); }
.filter-btn:hover, .filter-btn.active { background:var(--maasai-red); border-color:var(--maasai-red); }
"@
$mvBody = @"
  <header class="page-header">
    <div class="container">
      <h1 class="cinematic-text">MUSIC & <span class="text-yellow">VIDEOS</span></h1>
      <div class="bead-divider"><div class="bead yellow"></div><div class="bead blue"></div><div class="bead red"></div></div>
      <p class="cinematic-text" style="font-size:1.2rem; color:var(--white); margin-top:10px;">Listen. Watch. Experience the journey.</p>
    </div>
  </header>
  
  <section class="section container" style="text-align:center;">
    
    <div style="margin-bottom: 80px;">
      <h2 style="color:var(--maasai-red); margin-bottom: 30px;">FEATURED VIDEO</h2>
      <div style="max-width: 1000px; margin: 0 auto; border: 2px solid var(--maasai-yellow); aspect-ratio: 16/9; position: relative;">
        <img src="DSC09018.JPG" alt="Featured Video" style="width:100%; height:100%; object-fit:cover;">
        <div class="play-btn" style="width:90px; height:90px;"></div>
      </div>
      <a href="https://youtube.com/@dufladiligontv" target="_blank" class="btn btn-red" style="margin-top:40px;">WATCH ON YOUTUBE</a>
    </div>

    <h2>DUFLA DILIGON TV</h2>
    <div class="bead-divider" style="margin-top:20px; margin-bottom:40px;"><div class="bead blue"></div><div class="bead yellow"></div><div class="bead blue"></div></div>
    
    <div class="filters">
      <button class="filter-btn active">ALL</button>
      <button class="filter-btn">OFFICIAL VIDEOS</button>
      <button class="filter-btn">LIVE PERFORMANCES</button>
      <button class="filter-btn">COLLABORATIONS</button>
      <button class="filter-btn">PLAYLISTS</button>
    </div>

    <div class="video-grid">
      <!-- Video Card 1 -->
      <div class="video-card">
        <div class="video-thumb">
          <img src="DSC08996.JPG" alt="Video Thumbnail">
          <div class="play-btn"></div>
        </div>
        <div class="video-info">
          <div class="video-title">Tempo (Official Video)</div>
          <div class="video-meta">Official Music Video</div>
        </div>
      </div>
      <!-- Video Card 2 -->
      <div class="video-card">
        <div class="video-thumb">
          <img src="DSC08997.JPG" alt="Video Thumbnail">
          <div class="play-btn"></div>
        </div>
        <div class="video-info">
          <div class="video-title">Donjo Maber ft. Iyanii</div>
          <div class="video-meta">Collaboration</div>
        </div>
      </div>
      <!-- Video Card 3 -->
      <div class="video-card">
        <div class="video-thumb">
          <img src="DSC09000.JPG" alt="Video Thumbnail">
          <div class="play-btn"></div>
        </div>
        <div class="video-info">
          <div class="video-title">Live in Maralal</div>
          <div class="video-meta">Live Performance</div>
        </div>
      </div>
      <!-- Video Card 4 -->
      <div class="video-card">
        <div class="video-thumb">
          <img src="DSC09022.JPG" alt="Video Thumbnail">
          <div class="play-btn"></div>
        </div>
        <div class="video-info">
          <div class="video-title">The Northern Journey Documentary</div>
          <div class="video-meta">Behind The Scenes</div>
        </div>
      </div>
      <!-- Video Card 5 -->
      <div class="video-card">
        <div class="video-thumb">
          <img src="DSC09026.JPG" alt="Video Thumbnail">
          <div class="play-btn"></div>
        </div>
        <div class="video-info">
          <div class="video-title">Studio Sessions</div>
          <div class="video-meta">Vlogs & Studio</div>
        </div>
      </div>
      <!-- Video Card 6 -->
      <div class="video-card">
        <div class="video-thumb">
          <img src="DSC09027.JPG" alt="Video Thumbnail">
          <div class="play-btn"></div>
        </div>
        <div class="video-info">
          <div class="video-title">Samburu Anthem</div>
          <div class="video-meta">Official Music Video</div>
        </div>
      </div>
    </div>
    
    <div style="margin-top: 60px;">
      <a href="https://youtube.com/@dufladiligontv" target="_blank" class="btn btn-outline">VIEW MORE ON YOUTUBE</a>
    </div>

  </section>
"@
Build-Page "music-videos.html" "Music & Videos | Dufla Diligon" $mvCss $mvBody


# 3. EVENTS
$eventsCss = @"
.page-header { background-image: url('DSC09003.JPG'); }
.event-list { display:flex; flex-direction:column; gap:20px; margin-top:40px; }
.event-row { display:flex; background:rgba(255,255,255,0.03); border-left:4px solid var(--maasai-red); transition:var(--transition); overflow:hidden; }
.event-row:hover { background:rgba(255,255,255,0.08); }
.event-date { padding:30px; background:rgba(0,0,0,0.5); text-align:center; min-width:150px; display:flex; flex-direction:column; justify-content:center; }
.event-date .day { font-size:2.5rem; font-family:var(--font-heading); font-weight:700; color:var(--maasai-yellow); line-height:1; }
.event-date .month { font-size:1rem; text-transform:uppercase; letter-spacing:2px; }
.event-details { padding:30px; flex-grow:1; display:flex; flex-direction:column; justify-content:center; }
.event-title { font-size:1.5rem; font-weight:700; margin-bottom:5px; }
.event-location { font-size:0.9rem; color:#aaa; margin-bottom:15px; }
.event-cta { padding:30px; display:flex; align-items:center; }
@media(max-width:768px) { .event-row { flex-direction:column; } .event-date { padding:20px; } .event-cta { padding:20px; justify-content:flex-start; } }
"@
$eventsBody = @"
  <header class="page-header">
    <div class="container">
      <h1 class="cinematic-text">LIVE <span class="text-red">EVENTS</span></h1>
      <div class="bead-divider"><div class="bead red"></div><div class="bead yellow"></div><div class="bead red"></div></div>
      <p class="cinematic-text" style="font-size:1.2rem; margin-top:10px;">Catch Dufla Diligon live on stage.</p>
    </div>
  </header>
  <section class="section container">
    <h2 style="color:var(--maasai-yellow); margin-bottom: 20px;">UPCOMING EVENTS</h2>
    
    <div class="event-list" style="margin-bottom: 80px;">
      <!-- Main Event -->
      <div class="event-row" style="border-left-color: var(--maasai-yellow);">
        <div class="event-date">
          <div class="day">31</div>
          <div class="month">OCT 2026</div>
        </div>
        <div class="event-details">
          <div class="event-title">10 Years Anniversary Unity Concert</div>
          <div class="event-location">Kenyatta Stadium, Maralal, Samburu County</div>
          <div style="font-size:0.8rem; color:#888;">Music. Culture. Peace. Unity. Free Entry for everyone.</div>
        </div>
        <div class="event-cta">
          <a href="10-years.html" class="btn btn-red">EVENT DETAILS</a>
        </div>
      </div>
    </div>

    <h2 style="color:#888; margin-bottom: 20px;">PAST EVENTS ARCHIVE</h2>
    <div class="event-list">
      <div class="event-row" style="opacity: 0.7; filter: grayscale(100%);">
        <div class="event-date"><div class="day">15</div><div class="month">AUG 2025</div></div>
        <div class="event-details">
          <div class="event-title">Nairobi Cultural Festival</div>
          <div class="event-location">KICC, Nairobi</div>
        </div>
        <div class="event-cta"><a href="#" class="btn btn-outline" style="padding:10px 20px;">VIEW RECAP</a></div>
      </div>
      <div class="event-row" style="opacity: 0.7; filter: grayscale(100%);">
        <div class="event-date"><div class="day">02</div><div class="month">MAY 2025</div></div>
        <div class="event-details">
          <div class="event-title">East African Connect Tour</div>
          <div class="event-location">Kampala, Uganda</div>
        </div>
        <div class="event-cta"><a href="#" class="btn btn-outline" style="padding:10px 20px;">VIEW RECAP</a></div>
      </div>
    </div>
  </section>
"@
Build-Page "events.html" "Events & Performances | Dufla Diligon" $eventsCss $eventsBody


# 4. NEWS
$newsCss = @"
.page-header { background-image: url('DSC08999.JPG'); }
.news-grid { display:grid; grid-template-columns:repeat(auto-fit, minmax(350px, 1fr)); gap:40px; margin-top:50px; }
.news-card { display:flex; flex-direction:column; background:rgba(255,255,255,0.02); transition:var(--transition); border-bottom:3px solid transparent; }
.news-card:hover { transform:translateY(-10px); background:rgba(255,255,255,0.05); border-bottom-color:var(--maasai-red); }
.news-img { width:100%; aspect-ratio:16/9; overflow:hidden; }
.news-img img { width:100%; height:100%; object-fit:cover; transition:transform 0.5s ease; }
.news-card:hover .news-img img { transform:scale(1.05); }
.news-content { padding:30px; display:flex; flex-direction:column; flex-grow:1; }
.news-meta { font-size:0.8rem; color:var(--maasai-yellow); text-transform:uppercase; letter-spacing:1px; margin-bottom:10px; }
.news-title { font-size:1.4rem; font-weight:700; font-family:var(--font-heading); margin-bottom:15px; line-height:1.3; }
.news-excerpt { font-size:0.95rem; color:#aaa; margin-bottom:20px; flex-grow:1; }
.news-read { font-weight:600; color:var(--white); font-size:0.85rem; letter-spacing:2px; text-transform:uppercase; }
.news-card:hover .news-read { color:var(--maasai-red); }
"@
$newsBody = @"
  <header class="page-header">
    <div class="container">
      <h1 class="cinematic-text">LATEST <span class="text-red">NEWS</span></h1>
      <div class="bead-divider"><div class="bead blue"></div><div class="bead yellow"></div><div class="bead red"></div></div>
      <p class="cinematic-text" style="font-size:1.2rem; margin-top:10px;">Announcements, releases, and stories from the journey.</p>
    </div>
  </header>
  <section class="section container">
    <div class="news-grid">
      <!-- Article 1 -->
      <article class="news-card">
        <div class="news-img"><img src="DSC09018.JPG" alt="News Image" loading="lazy"></div>
        <div class="news-content">
          <div class="news-meta">ANNOUNCEMENT • OCT 2026</div>
          <h2 class="news-title">Dufla Diligon Announces 10 Years Anniversary Unity Concert</h2>
          <p class="news-excerpt">The official announcement of the decade milestone event set for Maralal, Samburu County, celebrating music, culture, peace, and unity.</p>
          <a href="10-years.html" class="news-read">READ MORE &rarr;</a>
        </div>
      </article>
      <!-- Article 2 -->
      <article class="news-card">
        <div class="news-img"><img src="DSC08994.JPG" alt="News Image" loading="lazy"></div>
        <div class="news-content">
          <div class="news-meta">CULTURE • SEP 2025</div>
          <h2 class="news-title">From Baragoi to the Kenyan Music Scene</h2>
          <p class="news-excerpt">A deep dive into Dufla Diligon's roots, his early years herding livestock, and how Northern Kenyan culture continues to shape his sound.</p>
          <a href="about.html" class="news-read">READ MORE &rarr;</a>
        </div>
      </article>
      <!-- Article 3 -->
      <article class="news-card">
        <div class="news-img"><img src="DSC08997.JPG" alt="News Image" loading="lazy"></div>
        <div class="news-content">
          <div class="news-meta">MUSIC • JAN 2025</div>
          <h2 class="news-title">Dufla Diligon and Iyanii Collaborate on Hit "Donjo Maber"</h2>
          <p class="news-excerpt">The powerful collaboration that took the nation by storm and earned Citizen Digital's Song of the Year honors.</p>
          <a href="music-videos.html" class="news-read">WATCH VIDEO &rarr;</a>
        </div>
      </article>
      <!-- Article 4 -->
      <article class="news-card">
        <div class="news-img"><img src="charity-poster.jpg" alt="News Image" loading="lazy"></div>
        <div class="news-content">
          <div class="news-meta">COMMUNITY • NOV 2025</div>
          <h2 class="news-title">Peace Walk Initiative Announced</h2>
          <p class="news-excerpt">Artists, elders, and youth prepare to walk from Yare to Kenyatta Stadium to symbolize peaceful coexistence between communities.</p>
          <a href="10-years.html" class="news-read">READ MORE &rarr;</a>
        </div>
      </article>
    </div>
  </section>
"@
Build-Page "news.html" "News & Updates | Dufla Diligon" $newsCss $newsBody

