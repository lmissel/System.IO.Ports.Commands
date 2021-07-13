Import-Module ..\..\module\1.1.0.0\System.IO.Ports.Commands.psm1

# Stellt einen seriellen Anschluss (als entsprechende Ressource) dar.
$Script:SerialPort = Open-SerialPort -portName COM3
$Script:SerialPort.ReadTimeout = 500    # legt die Anzahl der Millisekunden, bevor ein Timeout auftritt, wenn ein Lesevorgang nicht beendet wird, fest.
$Script:SerialPort.WriteTimeout = 500   # legt die Anzahl der Millisekunden, bevor ein Timeout auftritt, wenn ein Schreibvorgang nicht beendet wird, fest.

# Stellt die Methode dar, die das DataReceived-Ereignis eines SerialPort-Objekts behandelt.
$scriptblock = {
    Read-SerialPort -SerialPort $Script:SerialPort
}
Register-ObjectEvent -InputObject $Script:SerialPort -EventName "DataReceived" -SourceIdentifier COM3DataReceived -Action $scriptblock

# Fragt den Benutzer nach seinem Namen.
[Console]::Write("Name: ")
$name = Read-Host

[Console]::WriteLine("type QUIT to exit")

# Stellt die Methode dar, die Nachrichten über den SerialPort versendet.
$continue = $true
while ($continue)
{
    $Message = Read-Host

    if ([System.StringComparer]::Equals("quit",$Message))
    {
        $continue = $false
    }
    else
    {
        Write-SerialPort -SerialPort $Script:SerialPort -Text ("<{0}>: {1}" -f $name, $Message)
    }
}

# Aufräumen
Unregister-Event -SourceIdentifier COM3DataReceived
Close-SerialPort -SerialPort $Script:SerialPort