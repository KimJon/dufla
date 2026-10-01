$files = Get-ChildItem -Filter *.html

foreach ($file in $files) {
    $c = Get-Content $file.FullName -Raw

    # 1. Fix Mojibake (Garbled Emojis)
    $c = $c -replace 'ðŸŽµ', '&#127925;'  # Musical Note
    $c = $c -replace 'ðŸŒ', '&#127757;'    # Globe
    $c = $c -replace 'ðŸŽ¤', '&#127904;'  # Microphone
    $c = $c -replace 'ðŸ“±', '&#128241;'  # Mobile Phone
    $c = $c -replace 'ðŸ¤', '&#129309;'    # Handshake
    $c = $c -replace 'ðŸ†', '&#127942;'  # Trophy
    $c = $c -replace 'â˜Žï¸', '&#128222;' # Telephone
    $c = $c -replace 'âœ‰ï¸', '&#9993;'   # Envelope
    
    # Also just replace the actual emojis if they got garbled differently
    $c = $c -replace '🎵', '&#127925;'
    $c = $c -replace '🌍', '&#127757;'
    $c = $c -replace '🎤', '&#127904;'
    $c = $c -replace '📱', '&#128241;'
    $c = $c -replace '🤝', '&#129309;'
    $c = $c -replace '🏆', '&#127942;'
    $c = $c -replace '📞', '&#128222;'
    $c = $c -replace '✉️', '&#9993;'

    # General fallback for any other weird encodings not caught before
    $c = $c -replace 'â€“', '&ndash;'
    $c = $c -replace 'â€”', '&mdash;'
    $c = $c -replace 'â€™', '&rsquo;'
    $c = $c -replace 'â€œ', '&ldquo;'
    $c = $c -replace 'â€', '&rdquo;'

    # 2. Update Emails
    $c = $c -replace 'extralevelsmarketing@gmail.com', 'info@dufladiligon.com'
    
    # In support-partnerships.html, we need to add the sales email explicitly
    if ($file.Name -eq "support-partnerships.html") {
        # If it only has info@, add sales@ next to it. 
        # The original had one email block, let's replace the whole contact block to be safe.
        $contactRegex = '(?s)<div class="contact-line">\s*<span>&#9993;</span>\s*<span><strong>info@dufladiligon.com</strong></span>\s*</div>'
        $newContact = @"
        <div class="contact-line">
          <span>&#9993;</span>
          <span><strong>info@dufladiligon.com</strong></span>
        </div>
        <div class="contact-line">
          <span>&#9993;</span>
          <span><strong>sales@dufladiligon.com</strong></span>
        </div>
"@
        $c = $c -replace $contactRegex, $newContact
        
        # If it didn't replace because it still had emojis in the regex, let's do a broader replacement
        $c = $c -replace '(?s)<div class="contact-line">.*?extralevelsmarketing@gmail\.com.*?</div>', $newContact
        $c = $c -replace '(?s)<div class="contact-line">.*?info@dufladiligon\.com.*?</div>(?!.*sales@dufladiligon)', $newContact
    }

    Set-Content $file.FullName -Value $c -Encoding UTF8
}

Write-Host "Encoding fixed and emails updated!"
