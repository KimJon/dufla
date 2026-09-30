$nav = @"
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

$footer = @"
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

$privacyPage = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Privacy Policy | Dufla Diligon</title>
  <meta name="description" content="Privacy Policy for Dufla Diligon official website.">
  <link rel="stylesheet" href="style.css">
  <style>
    .legal-section { padding: 120px 20px 80px; max-width: 800px; margin: 0 auto; color: #ccc; line-height: 1.8; }
    .legal-section h1 { font-family: var(--font-heading); font-size: clamp(2rem, 4vw, 3rem); color: var(--white); margin-bottom: 20px; }
    .legal-section h2 { font-family: var(--font-heading); font-size: 1.5rem; color: var(--maasai-yellow); margin-top: 40px; margin-bottom: 15px; }
    .legal-section p, .legal-section ul { margin-bottom: 20px; font-size: 0.95rem; }
    .legal-section ul { padding-left: 20px; }
    .legal-section li { margin-bottom: 10px; }
    .legal-section strong { color: var(--white); }
  </style>
</head>
<body>
$nav

  <section class="legal-section">
    <h1>Privacy Policy</h1>
    <p><strong>Last Updated: October 2026</strong></p>
    
    <p>Welcome to the official website of Dufla Diligon (<strong>"we," "us," or "our"</strong>). We are committed to protecting your personal information and your right to privacy. If you have any questions or concerns about this privacy notice, or our practices with regards to your personal information, please contact our management team.</p>
    
    <p>This privacy policy applies to all information collected through our website (<strong>dufladiligon.com</strong>), as well as any related services, sales, marketing, or events.</p>

    <h2>1. Information We Collect</h2>
    <p>We collect personal information that you voluntarily provide to us when you express an interest in obtaining information about us, booking performances, proposing partnerships, or otherwise when you contact us.</p>
    <ul>
      <li><strong>Personal Information Provided by You:</strong> We may collect names, phone numbers, email addresses, job titles, organization names, and other similar information when you fill out forms (such as the Booking or Partnership forms).</li>
      <li><strong>Information Automatically Collected:</strong> We automatically collect certain information when you visit, use, or navigate the Website. This information does not reveal your specific identity but may include device and usage information, such as your IP address, browser and device characteristics, operating system, language preferences, referring URLs, device name, country, location, and information about how and when you use our Website. This information is primarily used for maintaining the security and operation of our Website, and for our internal analytics and reporting purposes.</li>
    </ul>

    <h2>2. How We Use Your Information</h2>
    <p>We use personal information collected via our Website for a variety of business purposes described below. We process your personal information for these purposes in reliance on our legitimate business interests, in order to enter into or perform a contract with you, with your consent, and/or for compliance with our legal obligations.</p>
    <ul>
      <li><strong>To fulfill and manage bookings and partnerships:</strong> We may use your information to fulfill and manage your requests for performances, sponsorships, and collaborations.</li>
      <li><strong>To respond to user inquiries:</strong> We may use your information to respond to your inquiries and solve any potential issues you might have.</li>
      <li><strong>To deliver targeted advertising to you:</strong> We may use your information to develop and display personalized content and advertising (and work with third parties who do so) tailored to your interests and/or location and to measure its effectiveness.</li>
      <li><strong>To evaluate and improve our Website:</strong> We may use your information for data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns, and to evaluate and improve our Website, products, marketing, and your experience.</li>
    </ul>

    <h2>3. Will Your Information Be Shared?</h2>
    <p>We only share and disclose your information in the following situations:</p>
    <ul>
      <li><strong>Compliance with Laws:</strong> We may disclose your information where we are legally required to do so in order to comply with applicable law, governmental requests, a judicial proceeding, court order, or legal process.</li>
      <li><strong>Vital Interests and Legal Rights:</strong> We may disclose your information where we believe it is necessary to investigate, prevent, or take action regarding potential violations of our policies, suspected fraud, situations involving potential threats to the safety of any person and illegal activities.</li>
      <li><strong>Business Partners:</strong> We may share your information with Extra Levels Marketing and authorized management personnel exclusively for the purpose of managing bookings, events, and artist operations.</li>
    </ul>

    <h2>4. Cookies and Tracking Technologies</h2>
    <p>We may use cookies and similar tracking technologies (like web beacons and pixels, including Google Analytics) to access or store information. You can set your browser to refuse all or some browser cookies, or to alert you when websites set or access cookies. If you disable or refuse cookies, please note that some parts of this website may become inaccessible or not function properly.</p>

    <h2>5. How Long Do We Keep Your Information?</h2>
    <p>We will only keep your personal information for as long as it is necessary for the purposes set out in this privacy notice, unless a longer retention period is required or permitted by law (such as tax, accounting, or other legal requirements).</p>

    <h2>6. Information Security</h2>
    <p>We have implemented appropriate technical and organizational security measures designed to protect the security of any personal information we process. However, despite our safeguards and efforts to secure your information, no electronic transmission over the Internet or information storage technology can be guaranteed to be 100% secure.</p>

    <h2>7. Contact Us</h2>
    <p>If you have questions or comments about this notice, you may email us at <strong>extralevelsmarketing@gmail.com</strong>.</p>
  </section>

$footer
"@

$termsPage = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Terms & Conditions | Dufla Diligon</title>
  <meta name="description" content="Terms and Conditions for Dufla Diligon official website.">
  <link rel="stylesheet" href="style.css">
  <style>
    .legal-section { padding: 120px 20px 80px; max-width: 800px; margin: 0 auto; color: #ccc; line-height: 1.8; }
    .legal-section h1 { font-family: var(--font-heading); font-size: clamp(2rem, 4vw, 3rem); color: var(--white); margin-bottom: 20px; }
    .legal-section h2 { font-family: var(--font-heading); font-size: 1.5rem; color: var(--maasai-yellow); margin-top: 40px; margin-bottom: 15px; }
    .legal-section p, .legal-section ul { margin-bottom: 20px; font-size: 0.95rem; }
    .legal-section ul { padding-left: 20px; }
    .legal-section li { margin-bottom: 10px; }
    .legal-section strong { color: var(--white); }
  </style>
</head>
<body>
$nav

  <section class="legal-section">
    <h1>Terms & Conditions</h1>
    <p><strong>Last Updated: October 2026</strong></p>
    
    <p>These Terms and Conditions constitute a legally binding agreement made between you, whether personally or on behalf of an entity (<strong>"you"</strong>), and Dufla Diligon and authorized management (<strong>"we," "us," or "our"</strong>), concerning your access to and use of the <strong>dufladiligon.com</strong> website as well as any other media form, media channel, or mobile website related, linked, or otherwise connected thereto.</p>
    
    <p>You agree that by accessing the Website, you have read, understood, and agreed to be bound by all of these Terms and Conditions. IF YOU DO NOT AGREE WITH ALL OF THESE TERMS AND CONDITIONS, THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SITE AND YOU MUST DISCONTINUE USE IMMEDIATELY.</p>

    <h2>1. Intellectual Property Rights</h2>
    <p>Unless otherwise indicated, the Website is our proprietary property and all source code, databases, functionality, software, website designs, audio, video, text, photographs, and graphics on the Website (collectively, the "Content") and the trademarks, service marks, and logos contained therein (the "Marks") are owned or controlled by us or licensed to us, and are protected by copyright and trademark laws and various other intellectual property rights and unfair competition laws.</p>
    <p>The Content and the Marks are provided on the Website "AS IS" for your information and personal use only. Except as expressly provided in these Terms and Conditions, no part of the Website and no Content or Marks may be copied, reproduced, aggregated, republished, uploaded, posted, publicly displayed, encoded, translated, transmitted, distributed, sold, licensed, or otherwise exploited for any commercial purpose whatsoever, without our express prior written permission.</p>

    <h2>2. User Representations</h2>
    <p>By using the Website, you represent and warrant that: (1) all registration information you submit will be true, accurate, current, and complete; (2) you will maintain the accuracy of such information and promptly update such registration information as necessary; (3) you have the legal capacity and you agree to comply with these Terms and Conditions; (4) you are not a minor in the jurisdiction in which you reside; (5) you will not access the Website through automated or non-human means, whether through a bot, script, or otherwise; (6) you will not use the Website for any illegal or unauthorized purpose; and (7) your use of the Website will not violate any applicable law or regulation.</p>

    <h2>3. Bookings and Partnerships</h2>
    <p>Any inquiries made through the "Book Dufla" or "Support & Partnerships" forms do not constitute a binding agreement for services. All performances, appearances, and partnerships are subject to separate, written contracts negotiated directly with our management team (Extra Levels Marketing). We reserve the right to decline any booking or partnership inquiry at our sole discretion.</p>

    <h2>4. Third-Party Websites and Content</h2>
    <p>The Website may contain links to other websites ("Third-Party Websites") as well as articles, photographs, text, graphics, pictures, designs, music, sound, video, information, applications, software, and other content or items belonging to or originating from third parties ("Third-Party Content"). Such Third-Party Websites and Third-Party Content are not investigated, monitored, or checked for accuracy, appropriateness, or completeness by us, and we are not responsible for any Third-Party Websites accessed through the Site.</p>

    <h2>5. Disclaimer</h2>
    <p>THE WEBSITE IS PROVIDED ON AN AS-IS AND AS-AVAILABLE BASIS. YOU AGREE THAT YOUR USE OF THE WEBSITE AND OUR SERVICES WILL BE AT YOUR SOLE RISK. TO THE FULLEST EXTENT PERMITTED BY LAW, WE DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, IN CONNECTION WITH THE WEBSITE AND YOUR USE THEREOF, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT.</p>

    <h2>6. Limitations of Liability</h2>
    <p>IN NO EVENT WILL WE OR OUR DIRECTORS, EMPLOYEES, OR AGENTS BE LIABLE TO YOU OR ANY THIRD PARTY FOR ANY DIRECT, INDIRECT, CONSEQUENTIAL, EXEMPLARY, INCIDENTAL, SPECIAL, OR PUNITIVE DAMAGES, INCLUDING LOST PROFIT, LOST REVENUE, LOSS OF DATA, OR OTHER DAMAGES ARISING FROM YOUR USE OF THE WEBSITE, EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.</p>

    <h2>7. Governing Law</h2>
    <p>These Terms shall be governed by and defined following the laws of the Republic of Kenya. Dufla Diligon and yourself irrevocably consent that the courts of Kenya shall have exclusive jurisdiction to resolve any dispute which may arise in connection with these terms.</p>

    <h2>8. Contact Us</h2>
    <p>In order to resolve a complaint regarding the Website or to receive further information regarding use of the Website, please contact us at:</p>
    <p><strong>extralevelsmarketing@gmail.com</strong></p>
  </section>

$footer
"@

Set-Content privacy.html -Value $privacyPage -Encoding UTF8
Set-Content terms.html -Value $termsPage -Encoding UTF8

# Update footers across existing files to point to the new pages
$htmlFiles = Get-ChildItem -Filter *.html | Where-Object { $_.Name -notmatch "privacy|terms" }
foreach ($file in $htmlFiles) {
    $c = Get-Content $file.FullName -Raw
    $c = $c -replace '<a href="#">Privacy Policy</a>', '<a href="privacy.html">Privacy Policy</a>'
    $c = $c -replace '<a href="#">Terms & Conditions</a>', '<a href="terms.html">Terms & Conditions</a>'
    $c = $c -replace '<a href="#">Terms &amp; Conditions</a>', '<a href="terms.html">Terms & Conditions</a>'
    Set-Content $file.FullName -Value $c -Encoding UTF8
}

Write-Host "Legal pages created and footer links updated!"
