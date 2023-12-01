$file = [IO.StreamReader]::new("inputs/01.txt")

$a = 0

while ( $null -ne ($line = $file.readline()) ) {
    $characters = $line.ToCharArray()
    $len = $characters.Count
    $i = 0
    $j = $len - 1

    while ( ($i -lt $len) -and ($characters[$i] -notmatch "\d") ) {
        $i++
    }

    while ( ($j -gt 0) -and ($characters[$j] -notmatch "\d") ) {
        $j--
    }

    if ( $i -le $j ) {
        $a += [convert]::ToInt32($characters[$i], 10) * 10 + [convert]::ToInt32($characters[$j], 10)
    }
}

$a