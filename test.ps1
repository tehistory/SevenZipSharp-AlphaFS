# 
# dotnet clean
# dotnet restore
# dotnet build
# dotnet test

#Add-Type -Path "C:\Users\lasse\psh\wrkspc\SevenZipSharp\Stage\Debug\net472\SevenZipSharp.dll"
[System.Reflection.Assembly]::LoadFrom("C:\Users\lasse\psh\wrkspc\SevenZipSharp\Stage\Debug\net472\SevenZipSharp.dll")

$compressor = New-Object SevenZip.SevenZipCompressor
$compressor.ArchiveFormat = "wim"
$compressor.CompressionMode = "Create"
$compressor.CompressionLevel = "Ultra"

# Invoke
$compressor.CompressDirectory("C:\Users\lasse\psh\wrkspc\testing", "C:\Users\lasse\psh\wrkspc\testing.wim")

# Extract
$extractor = New-Object SevenZip.SevenZipExtractor("C:\Users\lasse\psh\wrkspc\testing.wim")
# invoke
$extractor.ExtractArchive("C:\Users\lasse\psh\wrkspc\extracted")
