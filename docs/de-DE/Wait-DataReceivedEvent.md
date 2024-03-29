---
external help file: System.IO.Ports.Commands-help.xml
Module Name: System.IO.Ports.Commands
online version: https://github.com/lmissel/System.IO.Ports.Commands
schema: 2.0.0
---

# Wait-DataReceivedEvent

## SYNOPSIS
{{ Fill in the Synopsis }}

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
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -InputObject
{{ Fill InputObject Description }}

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
{{ Fill PortName Description }}

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
{{ Fill Quiet Description }}

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
{{ Fill Timeout Description }}

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

## RELATED LINKS

[https://github.com/lmissel/System.IO.Ports.Commands](https://github.com/lmissel/System.IO.Ports.Commands)

