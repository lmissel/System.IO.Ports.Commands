---
External help file: System.IO.Ports.Commands-help.xml
Module Name: System.IO.Ports.Commands
online version: https://github.com/lmissel/System.IO.Ports.Commands
schema: 2.0.0
---

# Write-SerialPort

## SYNOPSIS
Writes the specified string and, if desired, the value NewLine to the output buffer.

## SYNTAX

### Default (Default)
```
Write-SerialPort [-InputObject] <SerialPort> [-Text] <String> [-NoNewline] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Write(Byte[], Int32, Int32)
```
Write-SerialPort [-InputObject] <SerialPort> [-Byte] <Byte[]> [[-Offset] <Int32>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Writes data to the serial port output buffer. Use this `Write-SerialPort` function when you want to write data as output to a serial port.

## EXAMPLES

### Example 1
```powershell
PS C:\> Write-SerialPort -InputObject $SerialPort -Text "Hello World!"
```

Writes the specified string *"Hello World!"* to the output buffer.

### Example 2
```powershell
PS C:\> [bytes[]] $bytes = [System.Text.Encoding]::ASCII.GetBytes("Hello World!")
PS C:\> Write-SerialPort -InputObject $SerialPort -Byte $bytes -Offset 0
```

Writes a specified number of bytes to the serial port using data from a buffer.

## PARAMETERS

### -Byte
The byte array that contains the data to write to the port.

```yaml
Type: Byte[]
Parameter Sets: Write(Byte[], Int32, Int32)
Aliases:

Required: True
Position: 1
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

### -NoNewline
The string representations of the input objects are concatenated to form the output. No spaces or newlines are inserted between the output strings. No newline is added after the last output string.

```yaml
Type: SwitchParameter
Parameter Sets: Default
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Offset
The zero-based byte offset in the buffer parameter at which to begin copying bytes to the port.

```yaml
Type: Int32
Parameter Sets: Write(Byte[], Int32, Int32)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Text
Writes the specified string to the serial port.

```yaml
Type: String
Parameter Sets: Default
Aliases:

Required: True
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

### System.Byte[]

### System.Int32

## OUTPUTS

### System.Object
## NOTES
If there are too many bytes in the output buffer and Handshake is set to XOnXOff then the SerialPort object may raise a TimeoutException while it waits for the device to be ready to accept more data.

By default, SerialPort uses ASCIIEncoding to encode the characters. ASCIIEncoding encodes all characters greater than 127 as (char)63 or '?'. To support additional characters in that range, set Encoding to UTF8Encoding, UTF32Encoding, or UnicodeEncoding.

## RELATED LINKS

[Close-SerialPort](Close-SerialPort.md)
[Get-SerialPort](Get-SerialPort.md)
[Open-SerialPort](Open-SerialPort.md)
[Read-SerialPort](Read-SerialPort.md)
[Write-SerialPort](Write-SerialPort.md)
[Wait-DataReceivedEvent](Wait-DataReceivedEvent.md)
