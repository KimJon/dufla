$html = Get-Content events.html -Raw

$newEvent = @"
    <div class="event-list" style="margin-bottom: 40px;">
      <!-- Charity Event -->
      <div class="event-row" style="border-left-color: var(--maasai-red);">
        <div class="event-date">
          <div class="day">24</div>
          <div class="month">OCT 2026</div>
        </div>
        <div class="event-details">
          <div class="event-title">Unity Charity Event: Dufla Diligon & Friends</div>
          <div class="event-location">Mary Immaculate Girl Child Rescue Center, Suguta (Maralal)</div>
          <div style="font-size:0.8rem; color:#888;">Nurturing Children, Building Brighter Futures. Collecting foodstuffs, soaps, toiletries, and cash donations.</div>
        </div>
        <div class="event-cta">
          <a href="charity-poster-new.jpg" target="_blank" class="btn btn-red">VIEW POSTER</a>
        </div>
      </div>
    </div>
"@

# Insert before the 10 Years event. The 10 Years event has `<!-- Main Event -->`
$html = $html -replace '(?s)<!-- Main Event -->', "$newEvent`n      <!-- Main Event -->"

Set-Content events.html -Value $html -Encoding UTF8
