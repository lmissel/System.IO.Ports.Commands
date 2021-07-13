# System.IO.Ports.Commands
The `System.IO.Ports.Commands` module provides serial ports as a resource and allows you to quickly and easily send and receive data via SerialPort. Also included is a monitor so you can output the received data via the PowerShell console once a `DataReceived` event occurred.

## Example: Output of "hello world!" at the serial interface.

In this example, the phrase "Hello World!" is output on SerialPort COM3.

````PowerShell

# Loading the powershell module
Import-Module System.IO.Ports.Commands

# Opens the serialport COM3
$SerialPort = Open-SerialPort -portName COM3

# Write data to serialport
Write-SerialPort -InputObject $SerialPort -Text "Hello World!"

# Closes the serialport COM3
Close-SerialPort -InputObject $SerialPort

````

## Remarks
Use this method to output strings on a serial port.