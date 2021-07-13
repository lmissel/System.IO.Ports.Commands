# System.IO.Ports.Commands
The module `System.IO.Ports.Commands` provides serial ports as a resource. It thus allows you to quickly and easily send and receive data via such a resource. In addition, monitoring is included that provides a `DataReceived` event as a Powershell event as soon as the resource receives data.

## Description

The `System.IO.Ports.Commands` module contains cmdlets for controlling serial ports. The module uses the classes and enumerations of the namepace `System.IO.Ports`, which simplify the control of serial ports, e.g. handshake, parity, SerialPinChange, and StopBits. The most important class, is the `SerialPort` class. It provides a framework for synchronous and event-driven I/O operations, access to pin and interrupt states, and access to the driver properties for the serial port.

## Minimum Requirements

The module requires .NET and PowerShell version 3.0.

## Installation

To install and run this module, copy the `module` folder in one of the appropriate PowerShell paths and use Import-Module.

The paths where you can install this module are in the `$env:PSModulePath` global variable. For example, a common path to store a module on a system would be `%SystemRoot%/users/<user>/Documents/PowerShell/Modules/<moduleName>`. Be sure to create a directory for this module that uses the same name `System.IO.Ports.Commands` as the script module. If you did not save this module in one of these paths, you must specify the location of the module in the Import-Module command. Otherwise, PowerShell would not be able to find the module.

Starting with PowerShell, if you've placed this module in one of the PowerShell module paths, you don't need to explicitly import it. This module is automatically loaded when a user calls a function of the module. For more information about the module path, see [Importing a PowerShell Module](https://docs.microsoft.com/en-us/powershell/scripting/developer/module/importing-a-powershell-module?view=powershell-7.1) and [Modifying the PSModulePath Installation Path](https://docs.microsoft.com/en-us/powershell/scripting/developer/module/modifying-the-psmodulepath-installation-path?view=powershell-7.1).

To remove this module from active service in the current PowerShell session, use `Remove-Module -name System.IO.Ports.Commands`.

> [!Note]
> `Remove-Module` removes a module from the current PowerShell session, but doesn't uninstall the module or delete the module's files.

## Usage

In this example we output the phrase *"Hello World!"* to the SerialPort *COM3* and wait for a response. Then we read the data. Finally, we close the SerialPort so that it is available again.

```PowerShell
# Loading the powershell module
Import-Module System.IO.Ports.Commands

# Opens the serialport COM3
$SerialPort = Open-SerialPort -portName COM3

# Write data to serialport
Write-SerialPort -InputObject $SerialPort -Text "Hello World!"

# Wait 3 seconds for a response
Wait-DataReceivedEvent -InputObject $SerialPort -Timeout 3

# Read all existing data from serialport
Read-SerialPort -InputObject $SerialPort -Existing

# Closes the serialport COM3
Close-SerialPort -InputObject $SerialPort
```

```Output
Output:
Hello back!
```

## Notes
The module uses enumerations and classes of the namepace [System.IO.Ports].

## See also
- [System.IO.Ports Namespace | Microsoft Docs](https://docs.microsoft.com/en-us/dotnet/api/system.io.ports?view=netframework-4.8)