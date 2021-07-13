---
external help file: System.IO.Ports.Commands-help.xml
Module Name: System.IO.Ports.Commands
online version: https://github.com/lmissel/System.IO.Ports.Commands
schema: 2.0.0
---

# Wait-DataReceivedEvent

## SYNOPSIS
Indicates that data was received through a serial port.

## SYNTAX

### Default (Default)
```
Wait-DataReceivedEvent [-InputObject] <SerialPort> [[-Timeout] <Int32>] [-Quiet] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### PortNameSet
```
Wait-DataReceivedEvent [-PortName] <String> [[-Timeout] <Int32>] [-Quiet] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Indicates that data has been received through a port represented by the SerialPort object.

## EXAMPLES

### Example 1
```powershell
PS C:\> Wait-DataReceivedEvent -InputObject $SerialPort -Timeout 5
```
Indicates whether data was received through a port represented by the SerialPort object before a timeout occurs if no data was received.

### Example 2
```powershell
PS C:\> Wait-DataReceivedEvent -PortName "COM3"
```

Indicates whether data was received through a port represented by the PortName.

## PARAMETERS

### -InputObject
Represents a serial port resource.

```yaml
Type: SerialPort
Parameter Sets: Default
Aliases: SerialPort

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -PortName
Represents a serial port resource.

```yaml
Type: String
Parameter Sets: PortNameSet
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Quiet
This parameter suppresses a user feedback during his actions if the parameter is specified. The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Benannt
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
The number of seconds before a timeout occurs if no data was received.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 5
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Benannt
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Benannt
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.IO.Ports.SerialPort

### System.String

### System.Int32

## OUTPUTS

### System.Object
## NOTES
Data events can be caused by any of the items in the SerialData enumeration. Because the operating system determines whether to raise this event or not, not all parity errors may be reported.

The DataReceived event is also raised if an Eof character is received, regardless of the number of bytes in the internal input buffer and the value of the ReceivedBytesThreshold property.

The DataReceived event is not guaranteed to be raised for every byte received. Use the BytesToRead property to determine how much data is left to be read in the buffer.
The DataReceived event is raised on a secondary thread when data is received from the SerialPort object. 

## RELATED LINKS

[Close-SerialPort](Close-SerialPort.md)
[Get-SerialPort](Get-SerialPort.md)
[Open-SerialPort](Open-SerialPort.md)
[Read-SerialPort](Read-SerialPort.md)
[Write-SerialPort](Write-SerialPort.md)
[Wait-DataReceivedEvent](Wait-DataReceivedEvent.md)
