# Example: Hello World

In diesem Beispiel geben wir den Satz "Hello World!" am SerialPort COM3 aus.

````PowerShell

# Laden des PowerShell Moduls
Import-Module System.IO.Ports.Commands

# Öffnen des SerialPorts COM3
New-SerialPort -portName COM3

# Schreibe Daten
Write-SerialPort -data "Hello World!"

# Schließen des SerialPorts COM3
Close-SerialPort

````
