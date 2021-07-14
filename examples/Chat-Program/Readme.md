# System.IO.Ports.Commands
The `System.IO.Ports.Commands` module provides serial ports as a resource and allows you to quickly and easily send and receive data via SerialPort. Also included is a monitor so you can output the received data via the PowerShell console once a `DataReceived` event occurred.

## Example: Chat-Program.

The following code example demonstrates the use of the `System.IO.Ports.Commands` module to allow two users to chat from two separate computers connected by a null modem cable. In this example, the users are prompted for a username before chatting. Both computers must be executing this script to achieve full functionality of this example.

````PowerShell
# Loading the powershell module
Import-Module System.IO.Ports.Commands

# Represents a serial port (as a corresponding resource).
$Script:SerialPort = Open-SerialPort -portName COM3

# Set the read/write timeouts
$Script:SerialPort.ReadTimeout = 500
$Script:SerialPort.WriteTimeout = 500 

# Represents the method that handles the DataReceived event of a SerialPort object.
$scriptblock = {
    Read-SerialPort -SerialPort $Script:SerialPort
}
Register-ObjectEvent -InputObject $Script:SerialPort -EventName "DataReceived" -SourceIdentifier COM3DataReceived -Action $scriptblock

# Asks the user for his/her name.
[Console]::Write("Name: ")
$name = Read-Host

[Console]::WriteLine("type QUIT to exit")

# Represents the method that sends messages through the SerialPort.
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

# Cleanup
Unregister-Event -SourceIdentifier COM3DataReceived
Close-SerialPort -SerialPort $Script:SerialPort
````

## Remarks
Use this method to write and read strings on a serial port.