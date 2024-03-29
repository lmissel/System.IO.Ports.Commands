---
external help file: System.IO.Ports.Commands-help.xml
Module Name: System.IO.Ports.Commands
online version: https://github.com/lmissel/System.IO.Ports.Commands
schema: 2.0.0
---

# Open-SerialPort

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Open-SerialPort [-portName] <String> [[-baudRate] <Int32>] [[-parity] <Parity>] [[-dataBits] <Int32>]
 [[-stopBits] <StopBits>] [[-Handshake] <Handshake>] [-WhatIf] [-Confirm] [<CommonParameters>]
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

### -baudRate
{{ Fill baudRate Description }}

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
{{ Fill dataBits Description }}

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
{{ Fill Handshake Description }}

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
{{ Fill parity Description }}

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
{{ Fill portName Description }}

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
{{ Fill stopBits Description }}

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

## RELATED LINKS

[https://github.com/lmissel/System.IO.Ports.Commands](https://github.com/lmissel/System.IO.Ports.Commands)

