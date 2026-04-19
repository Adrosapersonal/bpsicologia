$f = 'C:\Users\Adrian\BPsicologia\index.html'
$all = [System.IO.File]::ReadAllLines($f)

# Añadir botón hamburger antes del cierre del nav (línea 235, base-0)
$all[235] = '    <button class="hamburger" id="hamburger" aria-label="Menu"><span></span><span></span><span></span></button>'
$all[236] = '</nav>'

# Añadir JS del hamburger antes del cierre </script> (buscar línea con fadeObserver)
for ($i = $all.Length - 1; $i -ge 0; $i--) {
  if ($all[$i] -like '*fadeEls.forEach*') {
    $all[$i] = $all[$i] + "`n`n    // Hamburger menu`n    const hamburger = document.getElementById('hamburger');`n    const navUl = document.querySelector('nav ul');`n    hamburger.addEventListener('click', () => { navUl.classList.toggle('open'); });`n    navUl.querySelectorAll('a').forEach(a => { a.addEventListener('click', () => navUl.classList.remove('open')); });"
    break
  }
}

[System.IO.File]::WriteAllLines($f, $all, [System.Text.Encoding]::UTF8)
Write-Output 'OK'
