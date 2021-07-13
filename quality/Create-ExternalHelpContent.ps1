$version = "1.1.0.0"
$language = "en-US"

$MarkdownFolder = ("C:\Users\LarsM\Documents\GitHub\System.IO.Ports.Commands\docs\{0}" -f $language)
$OutputPath = ("C:\Users\LarsM\Documents\GitHub\System.IO.Ports.Commands\module\{0}\{1}" -f $version, $language)

$file = New-ExternalHelp -Path $MarkdownFolder -OutputPath $OutputPath

#Get-HelpPreview -Path $OutputPath