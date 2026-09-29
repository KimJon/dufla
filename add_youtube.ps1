# 1. Update index.html with real video embed and social proof
$indexContent = Get-Content index.html -Raw
$youtubeEmbedIndex = @"
      <div style="aspect-ratio:16/9; max-width:800px; margin:0 auto 40px; border: 2px solid var(--maasai-red); box-shadow:0 15px 30px rgba(0,0,0,0.5);">
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/bd77wL5r-Ck" title="Iyanii ft Dufla Diligon - Donjo Maber (Official Music Video)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
"@

$socialProof = @"
  <div style="background:var(--maasai-red); padding:15px; display:flex; justify-content:center; gap:40px; flex-wrap:wrap; font-size:0.85rem; font-weight:700; text-transform:uppercase; letter-spacing:2px; color:var(--white); box-shadow:0 5px 15px rgba(0,0,0,0.5); z-index:10;">
    <span>★ Citizen Digital Song of the Year 2025</span>
    <span>★ 10+ Years in Music</span>
    <span>★ Northern Kenya's Global Voice</span>
  </div>
</header>
"@

# Replace the fake video box in index.html
$indexContent = $indexContent -replace '(?s)<div style="aspect-ratio:16/9; max-width:800px; margin:0 auto 40px; background:url.*?</div>\s*</div>', $youtubeEmbedIndex

# Add social proof bar right under the hero
$indexContent = $indexContent -replace '</header>', $socialProof

Set-Content index.html -Value $indexContent -Encoding UTF8

# 2. Update music-videos.html with real video embed
$mvContent = Get-Content music-videos.html -Raw
$youtubeEmbedMv = @"
      <div style="max-width: 1000px; margin: 0 auto; border: 2px solid var(--maasai-yellow); aspect-ratio: 16/9; box-shadow:0 20px 40px rgba(0,0,0,0.6);">
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/UvXZw2tWkhQ" title="Dufla - Tempo (Remix) ft. Cindy Sanyu" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
"@
$mvContent = $mvContent -replace '(?s)<div style="max-width: 1000px; margin: 0 auto; border: 2px solid var\(--maasai-yellow\); aspect-ratio: 16/9; position: relative;">.*?</div>', $youtubeEmbedMv

# Also update the thumbnails in the grid to have actual youtube popups or just simulate it better
# For now, just having the real embeds is what's requested
Set-Content music-videos.html -Value $mvContent -Encoding UTF8
