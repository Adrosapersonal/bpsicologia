$f = 'C:\Users\Adrian\BPsicologia\index.html'
$all = [System.IO.File]::ReadAllLines($f)

$svgBrain   = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" width="38" height="38"><path d="M12 2a7 7 0 0 1 7 7c0 3-1.5 5-3.5 6.5V17a1 1 0 0 1-1 1h-5a1 1 0 0 1-1-1v-1.5C6.5 14 5 12 5 9a7 7 0 0 1 7-7z"/><line x1="9" y1="21" x2="15" y2="21"/><line x1="9" y1="18" x2="15" y2="18"/></svg>'
$svgHeart   = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" width="38" height="38"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"/></svg>'
$svgUsers   = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" width="38" height="38"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg>'
$svgChild   = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" width="38" height="38"><circle cx="12" cy="8" r="5"/><path d="M3 21v-1a9 9 0 0 1 18 0v1"/></svg>'
$svgScreen  = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" width="38" height="38"><rect x="2" y="3" width="20" height="14" rx="2"/><path d="M8 21h8"/><path d="M12 17v4"/></svg>'
$svgMind    = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" width="38" height="38"><circle cx="12" cy="12" r="10"/><path d="M12 6v6l4 2"/></svg>'

$all[265] = '    <p class="section-subtitle">Ofrecemos atenci&oacute;n psicol&oacute;gica tanto presencial como online, adaptada a tus necesidades.</p>'
$all[269] = '          <div class="servicio-front"><div class="servicio-icon">' + $svgBrain + '</div><h4>Terapia individual</h4></div>'
$all[270] = '          <div class="servicio-back"><p>Sesiones personalizadas para trabajar ansiedad, depresi&oacute;n, autoestima, fobias y mucho m&aacute;s.</p></div>'
$all[275] = '          <div class="servicio-front"><div class="servicio-icon">' + $svgHeart + '</div><h4>Terapia de pareja</h4></div>'
$all[276] = '          <div class="servicio-back"><p>Mejora la comunicaci&oacute;n, resuelve conflictos y fortalece el v&iacute;nculo con tu pareja.</p></div>'
$all[281] = '          <div class="servicio-front"><div class="servicio-icon">' + $svgUsers + '</div><h4>Terapia familiar</h4></div>'
$all[282] = '          <div class="servicio-back"><p>Abordamos din&aacute;micas familiares disfuncionales y acompa&ntilde;amos en momentos de crisis.</p></div>'
$all[287] = '          <div class="servicio-front"><div class="servicio-icon">' + $svgChild + '</div><h4>Psicolog&iacute;a infantil</h4></div>'
$all[288] = '          <div class="servicio-back"><p>Atenci&oacute;n especializada para ni&ntilde;os y adolescentes con dificultades emocionales o de conducta.</p></div>'
$all[293] = '          <div class="servicio-front"><div class="servicio-icon">' + $svgScreen + '</div><h4>Terapia online</h4></div>'
$all[299] = '          <div class="servicio-front"><div class="servicio-icon">' + $svgMind + '</div><h4>Mindfulness y bienestar</h4></div>'
$all[300] = '          <div class="servicio-back"><p>T&eacute;cnicas de atenci&oacute;n plena para reducir el estr&eacute;s y mejorar tu calidad de vida.</p></div>'

[System.IO.File]::WriteAllLines($f, $all, [System.Text.Encoding]::UTF8)
Write-Output 'OK'
