---
external help file: System.IO.Ports.Commands-help.xml
Module Name: System.IO.Ports.Commands
online version: https://github.com/lmissel/System.IO.Ports.Commands
schema: 2.0.0
---

# Get-SerialPort

## SYNOPSIS
Gets an array of serial port names for the current computer.

## SYNTAX

```
Get-SerialPort [-ListAvailable] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Use the `Get-SerialPort` function to query the current computer for a list of valid serial port names. For example, you can use this method to determine whether COM1 and COM2 are valid serial ports for the current computer.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-SerialPort
```

Gets an array of serial port names for the current computer.

## PARAMETERS

### -ListAvailable
Use this parameter to query all available serial port names. For example, you can use this method to determine 

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

### None

## OUTPUTS

### System.Management.Automation.PSObject[]

## NOTES
The port names are obtained from the system registry (for example, HKEY_LOCAL_MACHINE\HARDWARE\DEVICEMAP\SERIALCOMM). If the registry contains stale or otherwise incorrect data then the `Get-SerialPort` will return incorrect data.

## RELATED LINKS

[Close-SerialPort](Close-SerialPort.md)
[Get-SerialPort](Get-SerialPort.md)
[Open-SerialPort](Open-SerialPort.md)
[Read-SerialPort](Read-SerialPort.md)
[Write-SerialPort](Write-SerialPort.md)
[Wait-DataReceivedEvent](Wait-DataReceivedEvent.md)
