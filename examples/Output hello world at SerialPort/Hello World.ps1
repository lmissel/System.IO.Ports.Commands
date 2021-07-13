# Laden des PowerShell Moduls
Import-Module System.IO.Ports.Commands

# Öffnen des SerialPorts COM3
New-SerialPort -portName COM3

# Schreibe Daten
Write-SerialPort "Hello World!"

# SchlieÃŸen des SerialPorts COM3
Close-SerialPort