$f = 'c:\Users\Micheal\Documents\PinkBoost\index.html'
$c = [System.IO.File]::ReadAllText($f)
$c2 = [System.Text.RegularExpressions.Regex]::Replace($c, '<img src="d?data:image[^"]*"(\s+alt="PinkBoost Marketing logo")', '<img src="Boost.png"$1')
[System.IO.File]::WriteAllText($f, $c2)
Write-Host "Done"
