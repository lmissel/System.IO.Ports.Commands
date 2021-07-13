---
external help file: System.IO.Ports.Commands-help.xml
Module Name: System.IO.Ports.Commands
online version: https://github.com/lmissel/System.IO.Ports.Commands
schema: 2.0.0
---

# Close-SerialPort

## SYNOPSIS
Closes the port connection.

## SYNTAX

```
Close-SerialPort [-InputObject] <SerialPort> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Closes the port connection, sets the IsOpen property to false, unregister all event subscriber, and disposes of the internal Stream object.

## EXAMPLES

### Example 1
```powershell
PS C:\> Close-SerialPort -InputObject $SerialPort
```

Closes the port connection of the serial port passed as parameter.

## PARAMETERS

### -InputObject
Represents a serial port resource.

```yaml
Type: SerialPort
Parameter Sets: (All)
Aliases: SerialPort

Required: True
Position: 0
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

### System.IO.Ports.SerialPort

## OUTPUTS

### System.Object
## NOTES
Calling the `Close-SerialPort` function closes the SerialPort object and clears both the receive and transmit buffers. This method calls the protected `SerialPort.Dispose(Boolean)` method with the Dispose parameter set to `true`.

Best practice is to wait some time after calling the Close method before attempting to call the Open method, since the port may not close immediately.

## RELATED LINKS

[Close-SerialPort](Close-SerialPort.md)
[Get-SerialPort](Get-SerialPort.md)
[Open-SerialPort](Open-SerialPort.md)
[Read-SerialPort](Read-SerialPort.md)
[Write-SerialPort](Write-SerialPort.md)
[Wait-DataReceivedEvent](Wait-DataReceivedEvent.md)
