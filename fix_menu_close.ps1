$c = Get-Content style.css -Raw
$c = $c -replace 'z-index: 1000;', 'z-index: 1010;' # Only for #navbar, we'll replace specifically

$c = $c -replace '(?s)#navbar \{\s*position: fixed; top: 0; left: 0; right: 0; z-index: 1000;', '#navbar { position: fixed; top: 0; left: 0; right: 0; z-index: 1010;'

Set-Content style.css -Value $c -Encoding UTF8
Write-Host "Z-index fixed for Navbar!"
