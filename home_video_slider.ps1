$html = Get-Content index.html -Raw

$oldSectionRegex = '(?s)<section class="home-section" style="background: var\(--maasai-blue\); text-align: center;">.*?</section>'

$newSection = @"
  <section class="home-section" style="background: var(--maasai-blue); text-align: center;">
    <div class="container">
      <h2 style="color:var(--white);">MUSIC & VIDEOS</h2>
      <p style="margin-bottom: 40px; color:var(--maasai-yellow);">Listen, watch and explore Dufla Diligon's musical journey.</p>
      
      <div class="home-video-slider" style="position:relative; max-width:800px; margin:0 auto 40px; border:2px solid var(--maasai-red); box-shadow:0 15px 30px rgba(0,0,0,0.5); overflow:hidden; aspect-ratio:16/9; background:#000;">
        <div class="hv-track" id="hvTrack" style="display:flex; transition:transform 0.5s ease-in-out; width:100%; height:100%;">
          
          <div class="hv-slide" style="flex:0 0 100%; width:100%; height:100%; position:relative;">
            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/bd77wL5r-Ck" title="Donjo Maber" frameborder="0" allowfullscreen loading="lazy"></iframe>
          </div>
          
          <div class="hv-slide" style="flex:0 0 100%; width:100%; height:100%; position:relative;">
            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/UvXZw2tWkhQ" title="Rumours" frameborder="0" allowfullscreen loading="lazy"></iframe>
          </div>
          
          <div class="hv-slide" style="flex:0 0 100%; width:100%; height:100%; position:relative;">
            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/NTYtms36H9M" title="Etingli" frameborder="0" allowfullscreen loading="lazy"></iframe>
          </div>
          
          <div class="hv-slide" style="flex:0 0 100%; width:100%; height:100%; position:relative;">
            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/gvsjDf3jH50" title="Achamoyong" frameborder="0" allowfullscreen loading="lazy"></iframe>
          </div>
          
        </div>

        <button id="hvPrev" style="position:absolute; top:50%; left:10px; transform:translateY(-50%); background:rgba(0,0,0,0.7); border:1px solid var(--maasai-red); color:#fff; width:40px; height:40px; cursor:pointer; font-size:1.2rem; z-index:10;">&#8592;</button>
        <button id="hvNext" style="position:absolute; top:50%; right:10px; transform:translateY(-50%); background:rgba(0,0,0,0.7); border:1px solid var(--maasai-red); color:#fff; width:40px; height:40px; cursor:pointer; font-size:1.2rem; z-index:10;">&#8594;</button>
      </div>
      
      <div style="display:flex; justify-content:center; gap:10px; margin-bottom:40px;" id="hvDots">
        <div class="hv-dot active" data-idx="0" style="width:12px; height:12px; background:var(--maasai-red); border-radius:50%; cursor:pointer; transition:0.3s;"></div>
        <div class="hv-dot" data-idx="1" style="width:12px; height:12px; background:rgba(255,255,255,0.3); border-radius:50%; cursor:pointer; transition:0.3s;"></div>
        <div class="hv-dot" data-idx="2" style="width:12px; height:12px; background:rgba(255,255,255,0.3); border-radius:50%; cursor:pointer; transition:0.3s;"></div>
        <div class="hv-dot" data-idx="3" style="width:12px; height:12px; background:rgba(255,255,255,0.3); border-radius:50%; cursor:pointer; transition:0.3s;"></div>
      </div>

      <div class="hero-buttons">
        <a href="music-videos.html" class="btn btn-outline">EXPLORE ALL MUSIC & VIDEOS &rarr;</a>
      </div>
    </div>
  </section>

  <script>
    (function(){
      let current = 0;
      const total = 4;
      const track = document.getElementById('hvTrack');
      const dots = document.querySelectorAll('.hv-dot');
      
      function updateSlider(idx) {
        current = (idx + total) % total;
        if(track) track.style.transform = 'translateX(-' + (current * 100) + '%)';
        dots.forEach(d => { d.style.background = 'rgba(255,255,255,0.3)'; d.style.transform = 'scale(1)'; });
        if(dots[current]) { dots[current].style.background = 'var(--maasai-red)'; dots[current].style.transform = 'scale(1.2)'; }
      }
      
      const nextBtn = document.getElementById('hvNext');
      const prevBtn = document.getElementById('hvPrev');
      if(nextBtn) nextBtn.addEventListener('click', () => updateSlider(current + 1));
      if(prevBtn) prevBtn.addEventListener('click', () => updateSlider(current - 1));
      dots.forEach(d => d.addEventListener('click', () => updateSlider(parseInt(d.getAttribute('data-idx')))));
    })();
  </script>
"@

$html = $html -replace $oldSectionRegex, $newSection

# Also clean up duplicate script blocks if any occurred
Set-Content index.html -Value $html -Encoding UTF8
Write-Host "Home Video Slider injected!"
