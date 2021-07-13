---
external help file: System.IO.Ports.Commands-help.xml
Module Name: System.IO.Ports.Commands
online version: https://github.com/lmissel/System.IO.Ports.Commands
schema: 2.0.0
---

# Read-SerialPort

## SYNOPSIS
Reads from the SerialPort input buffer.

## SYNTAX

### Default (Default)
```
Read-SerialPort [-InputObject] <SerialPort> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ReadSet
```
Read-SerialPort [-InputObject] <SerialPort> [-NoNewLine] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ReadExistingSet
```
Read-SerialPort [-InputObject] <SerialPort> [-Existing] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Reads up to the NewLine value in the input buffer.

## EXAMPLES

### Example 1
```powershell
PS C:\> Read-SerialPort -InputObject $SerialPort
```

Reads up to the NewLine value in the input buffer.

### Example 2
```powershell
PS C:\> Read-SerialPort -InputObject $SerialPort -NoNewLine
```

Reads a number of bytes from the SerialPort input buffer and writes those bytes into a byte array at the specified offset.

### Example 3
```powershell
PS C:\> Read-SerialPort -InputObject $SerialPort -Existing
```

Reads all immediately available bytes, based on the encoding, in both the stream and the input buffer of the SerialPort object.

## PARAMETERS

### -NoNewLine
This parameter specifies whether a number of bytes should be read from the SerialPort input buffer.

```yaml
Type: SwitchParameter
Parameter Sets: ReadExistingSet
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Existing
This parameter specifies whether to read all immediately available bytes, based on the encoding, in both the stream and the input buffer of the SerialPort object.

```yaml
Type: SwitchParameter
Parameter Sets: ReadExistingSet
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

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

### System.Management.Automation.SwitchParameter

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS

[Close-SerialPort](Close-SerialPort.md)
[Get-SerialPort](Get-SerialPort.md)
[Open-SerialPort](Open-SerialPort.md)
[Read-SerialPort](Read-SerialPort.md)
[Write-SerialPort](Write-SerialPort.md)
[Wait-DataReceivedEvent](Wait-DataReceivedEvent.md)
