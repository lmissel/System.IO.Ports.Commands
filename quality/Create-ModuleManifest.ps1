$moduleSettings = @{
    RootModule = 'System.IO.Ports.Commands.psm1'
    ModuleVersion = '1.1.0.0'
    GUID = ([GUID]::NewGuid())
    Author = 'lmissel'
    CompanyName = ''
    Copyright = ''
    Description = 'The System.IO.Ports.Commands module represents serial ports as a resource, and allows to quickly and easily send and receive data through the SerialPort.'
    FunctionsToExport = '*'
    CmdletsToExport = '*'
    VariablesToExport = '*'
    AliasesToExport = '*'
    ProjectUri = 'https://github.com/lmissel/System.IO.Ports.Commands'
}
New-ModuleManifest @moduleSettings