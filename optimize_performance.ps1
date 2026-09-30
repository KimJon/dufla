# Fix index.html iframes to use srcdoc
$html = Get-Content index.html -Raw

$vids = @(
  @{id="bd77wL5r-Ck"; title="Donjo Maber"},
  @{id="UvXZw2tWkhQ"; title="Rumours"},
  @{id="NTYtms36H9M"; title="Etingli"},
  @{id="gvsjDf3jH50"; title="Achamoyong"}
)

foreach ($v in $vids) {
  $id = $v.id
  $title = $v.title
  
  $oldIframe = '<iframe width="100%" height="100%" src="https://www.youtube.com/embed/' + $id + '" title=".*?" frameborder="0" allowfullscreen loading="lazy"></iframe>'
  
  $srcdoc = "<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto;object-fit:cover;height:100%}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black;transition:transform 0.2s}a:hover span{transform:scale(1.1)}</style><a href=https://www.youtube.com/embed/$id?autoplay=1><img src=https://img.youtube.com/vi/$id/hqdefault.jpg alt='$title'><span>&#x25BA;</span></a>"
  
  $newIframe = "<iframe width=`"100%`" height=`"100%`" src=`"https://www.youtube.com/embed/$id`" srcdoc=`"$srcdoc`" title=`"$title`" frameborder=`"0`" allow=`"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture`" allowfullscreen></iframe>"
  
  $html = $html -replace $oldIframe, $newIframe
}

# Preload hero image
if ($html -notmatch 'rel="preload"') {
    $html = $html -replace '</head>', "`n<link rel=`"preload`" as=`"image`" href=`"dufla 1.JPG`">`n</head>"
}

Set-Content index.html -Value $html -Encoding UTF8

# Now do music-videos.html
$mHtml = Get-Content music-videos.html -Raw
foreach ($v in $vids) {
    $id = $v.id
    $title = $v.title
    $srcdoc = "<style>*{padding:0;margin:0;overflow:hidden}html,body{height:100%}img,span{position:absolute;width:100%;top:0;bottom:0;margin:auto;object-fit:cover;height:100%}span{height:1.5em;text-align:center;font:48px/1.5 sans-serif;color:white;text-shadow:0 0 0.5em black;transition:transform 0.2s}a:hover span{transform:scale(1.1)}</style><a href=https://www.youtube.com/embed/$id?autoplay=1><img src=https://img.youtube.com/vi/$id/hqdefault.jpg alt='$title'><span>&#x25BA;</span></a>"
    
    $mHtml = $mHtml -replace "<iframe src=`"https://www.youtube.com/embed/$id`".*?</iframe>", "<iframe src=`"https://www.youtube.com/embed/$id`" srcdoc=`"$srcdoc`" width=`"100%`" height=`"100%`" frameborder=`"0`" allow=`"autoplay; fullscreen`" allowfullscreen></iframe>"
}
Set-Content music-videos.html -Value $mHtml -Encoding UTF8

Write-Host "Iframes optimized for instant load!"
