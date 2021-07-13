
$language = "en-US"
$OutputFolder = ("\System.IO.Ports.Commands\docs\{0}" -f $language)

$parameters = @{
    Module = "System.IO.Ports.Commands"
    OutputFolder = $OutputFolder
    AlphabeticParamsOrder = $true
    WithModulePage = $true
    ExcludeDontShow = $false
    Encoding = [System.Text.Encoding]::Unicode
}
New-MarkdownHelp @parameters
