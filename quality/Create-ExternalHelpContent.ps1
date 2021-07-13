$version = "1.1.0.0"
$language = "en-US"

$MarkdownFolder = ("\System.IO.Ports.Commands\docs\{0}" -f $language)
$OutputPath = ("\System.IO.Ports.Commands\module\{0}\{1}" -f $version, $language)

$file = New-ExternalHelp -Path $MarkdownFolder -OutputPath $OutputPath

#Get-HelpPreview -Path $OutputPath
