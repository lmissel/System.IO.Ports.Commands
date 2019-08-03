# Laden des PowerShell Moduls
Import-Module System.IO.Ports.Commands

# ÷ffnen des SerialPorts COM3
New-SerialPort -portName COM3

# Schreibe Daten
Write-SerialPort "Hello World!"

# Schlie√üen des SerialPorts COM3
Close-SerialPort