# Compress Images
Add-Type -AssemblyName System.Drawing
$images = Get-ChildItem -Filter dufla*.JPG
foreach ($img in $images) {
    try {
        $bmp = [System.Drawing.Image]::FromFile($img.FullName)
        
        # Calculate new size (max width 1600px)
        $maxWidth = 1600
        $scale = 1.0
        if ($bmp.Width -gt $maxWidth) {
            $scale = $maxWidth / $bmp.Width
        }
        $newWidth = [math]::Floor($bmp.Width * $scale)
        $newHeight = [math]::Floor($bmp.Height * $scale)

        $newBmp = New-Object System.Drawing.Bitmap($newWidth, $newHeight)
        $g = [System.Drawing.Graphics]::FromImage($newBmp)
        $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $g.DrawImage($bmp, 0, 0, $newWidth, $newHeight)
        
        $bmp.Dispose()
        $g.Dispose()

        # Save with quality 70
        $codec = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object { $_.MimeType -eq 'image/jpeg' }
        $encParams = New-Object System.Drawing.Imaging.EncoderParameters(1)
        $encParams.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter([System.Drawing.Imaging.Encoder]::Quality, [long]70)
        
        $newBmp.Save($img.FullName, $codec, $encParams)
        $newBmp.Dispose()
        Write-Host "Compressed $($img.Name)"
    } catch {
        Write-Host "Failed to compress $($img.Name): $_"
    }
}
