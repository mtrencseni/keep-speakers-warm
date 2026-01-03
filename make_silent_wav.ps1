$path = "D:\Apps\silent.wav"
$sr = 44100
$dur = 10

$numSamples = $sr * $dur
$samples = New-Object byte[] ($numSamples * 2)  # zeros = silence