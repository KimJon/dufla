$files = Get-ChildItem -Filter *.html

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    # Replace YouTube
    $content = $content -replace "https://youtube\.com/@dufladiligontv", "https://youtube.com/@duflamusic?si=NporpgNPWeEd60oz"
    
    # Replace Facebook
    $content = $content -replace "https://facebook\.com/dufladiligon", "https://www.facebook.com/share/1Dr2cRrCRw/"
    
    # Replace TikTok
    $content = $content -replace "https://tiktok\.com/@dufladiligon", "https://www.tiktok.com/@dufladiligon?_r=1&_t=ZS-9A8BRUnoHFk"
    
    Set-Content $file.FullName -Value $content -Encoding UTF8
}
