$files = Get-ChildItem -Filter *.html

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    # 1. Update Footer
    $content = $content -replace "Website by <strong>Haxor Management & Technology Consultants</strong>", "Website by <strong>Haxor Management & Technology Consultants</strong> | Powered by <strong>Extra Levels Marketing</strong>"
    
    # 2. Update Kenyatta Stadium references
    $content = $content -replace "Kenyatta Stadium<br><span", "Maralal<br><span"
    $content = $content -replace "Kenyatta Stadium, Maralal", "Maralal"
    $content = $content -replace "Yare to Kenyatta Stadium", "Yare to the main venue"
    
    Set-Content $file.FullName -Value $content -Encoding UTF8
}
