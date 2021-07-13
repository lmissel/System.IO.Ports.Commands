---
external help file: System.IO.Ports.Commands-help.xml
Module Name: System.IO.Ports.Commands
online version: https://github.com/lmissel/System.IO.Ports.Commands
schema: 2.0.0
---

# Open-SerialPort

## SYNOPSIS
Opens a new serial port connection.

## SYNTAX

```
Open-SerialPort [-portName] <String> [[-baudRate] <Int32>] [[-parity] <Parity>] [[-dataBits] <Int32>]
 [[-stopBits] <StopBits>] [[-Handshake] <Handshake>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates SerialPort object and opens a connection to it. Afterwards event notifiers are registered, which are necessary for the other functions of this module.

## EXAMPLES

### Example 1
```powershell
PS C:\> Open-SerialPort -portName "COM1"
```

Opens a new serial port connection. In this example the serialport with the name *COM1*.

## PARAMETERS

### -baudRate
The baud rate.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -dataBits
The data bits value.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Handshake
One of the Handshake values. The default is None.

```yaml
Type: Handshake
Parameter Sets: (All)
Aliases:
Accepted values: None, XOnXOff, RequestToSend, RequestToSendXOnXOff

Required: False
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -parity
One of the enumeration values that represents the parity-checking protocol. The default is None.

```yaml
Type: Parity
Parameter Sets: (All)
Aliases:
Accepted values: None, Odd, Even, Mark, Space

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -portName
The port to use (for example, COM1).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -stopBits
One of the StopBits values.

```yaml
Type: StopBits
Parameter Sets: (All)
Aliases:
Accepted values: None, One, Two, OnePointFive

Required: False
Position: 4
Default value: None
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

### System.String

### System.Int32

### System.IO.Ports.Parity

### System.IO.Ports.StopBits

### System.IO.Ports.Handshake

## OUTPUTS

### System.IO.Ports.SerialPort

## NOTES
Only one open connection can exist per `SerialPort` object.

Best practice is to wait some time after calling the `Close-SerialPort` before attempting to call the `Open-SerialPort` function, as the port may not close immediately.

## RELATED LINKS

[Close-SerialPort](Close-SerialPort.md)
[Get-SerialPort](Get-SerialPort.md)
[Open-SerialPort](Open-SerialPort.md)
[Read-SerialPort](Read-SerialPort.md)
[Write-SerialPort](Write-SerialPort.md)
[Wait-DataReceivedEvent](Wait-DataReceivedEvent.md)
