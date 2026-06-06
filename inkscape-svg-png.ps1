#Requires -version 5

$width = 128

$svgFolder = Join-Path $pwd svg
$outFolder = Join-Path $pwd png $width
mkdir $outFolder

$svgFiles = Get-ChildItem $svgFolder -Filter *.svg
foreach ($svgFile in $svgFiles)
{
    $svgFilePath  = $svgFile.FullName 
    $fileName = Split-Path $svgFilePath -LeafBase
    $pngFile = $fileName + ".png"
    $pngFilePath = Join-Path $outFolder $pngFile
    $outputParam = "--export-width " + $width

    echo $pngFilePath
    inkscape $svgFilePath --export-type=png --export-filename=$pngFilePath --export-width $width
}