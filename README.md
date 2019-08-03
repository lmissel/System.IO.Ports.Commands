# System.IO.Ports.Commands

Dieses Modul stellt serielle Anschlüsse als Ressource dar, und ermöglicht es schnell und einfach Daten über den SerialPort zu versenden und zu empfangen. Ebenso ist ein SerialPort-Monitor integriert, sodass man die empfangenen Daten über die PowerShell Console ausgegeben bekommt, sobald DataReceived-Ereignis eingetreten ist.

## Detaillierte Beschreibung

Das Module System.IO.Ports.Commands enthält Cmdlets und Klassen zum Steuern von seriellen Anschlüssen. Die wichtigste Klasse, SerialPort, bietet ein Framework für synchrone und ereignisgesteuerte E/A-Vorgänge, Zugriff auf Pin- und Unterbrechungszustände sowie Zugriff auf die Treibereigenschaften für den seriellen Anschluss. Mit dieser Klasse können Stream-Objekte umschlossen werden, sodass Klassen, die Streams verwenden, auf den seriellen Anschluss zugreifen können.

Weitere Informationen: <https://docs.microsoft.com/de-de/dotnet/api/system.io.ports.serialport?view=netframework-4.8>

## Beispiel

In diesem Beispiel geben wir den Satz *"Hello World!"* am SerialPort *COM3* aus und warten auf eine Rückmeldung. Anschließend schließen wir den SerialPort, sodass dieser wieder frei zur Verfügung steht.

```PowerShell
# Laden des PowerShell Moduls
Import-Module Microsoft.SerialPort.Commands

# Öffnen des SerialPorts COM3
New-SerialPort -portName COM3

# Schreibe Daten
Write-SerialPort -Text "Hello World from script!"

# Ausgabe von empfangenen Daten
Read-SerialPort

# Beispielausgabe:
# Hello World from SerialPort!

# Schließen des SerialPorts COM3
Close-SerialPort
```

## Hinweis

Das Module verwendet Enumerationen des Namepaces [System.IO.Ports], mit denen die Steuerung von seriellen Anschlüssen, z. B. Handshake, Parity, SerialPinChange, und StopBits vereinfacht wird.
