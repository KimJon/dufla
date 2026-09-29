$files = Get-ChildItem -Path . -Include *.html,*.css -Recurse

$images = @("dufla 1.JPG", "dufla2.JPG", "dufla3.JPG", "dufla4.JPG", "dufla5.JPG", "dufla6.JPG")
$imgCount = $images.Length

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    # We will replace matches one by one to cycle through the images
    $i = 0
    $match = [regex]::Match($content, "DSC\d{5}\.JPG")
    while ($match.Success) {
        $replacement = $images[$i % $imgCount]
        # Replace only the first occurrence in the current string
        $content = $content.Substring(0, $match.Index) + $replacement + $content.Substring($match.Index + $match.Length)
        $i++
        # Find next match
        $match = [regex]::Match($content, "DSC\d{5}\.JPG")
    }
    
    Set-Content $file.FullName -Value $content -Encoding UTF8
}
