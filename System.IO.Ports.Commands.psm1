<#
.Synopsis
   Gibt die aktuellen Serial Controller aus.
.DESCRIPTION
   Gibt die aktuellen Serial Controller aus.
.EXAMPLE
   Get-SerialController
.NOTES
   Allgemeine Hinweise
#>
function Get-SerialController
{
    [CmdletBinding(DefaultParameterSetName='Parameter Set 1', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.Ports.Commands',
                  ConfirmImpact='Medium')]
    [Alias()]
    [OutputType([PSObject[]])]
    Param
    (
    )

    Begin
    {
        $computer = $env:COMPUTERNAME
        $namespace = "ROOT\CIMV2"
        $classname = "CIM_SerialController"
    }
    Process
    {
        if ($pscmdlet.ShouldProcess("Serial Controller", "searching"))
        {
            $WmiSerialController = Get-WmiObject -Class $classname -ComputerName $computer -Namespace $namespace
            
            [PSObject[]]$Objekte
            
            foreach ($SerialController in $WmiSerialController)
            {
                $Objekt = New-Object -TypeName PSObject
                $Objekt | Add-Member -MemberType NoteProperty -Name Availability -Value $SerialController.Availability
                $Objekt | Add-Member -MemberType NoteProperty -Name Binary -Value $SerialController.Binary
                $Objekt | Add-Member -MemberType NoteProperty -Name Capabilities -Value $SerialController.Capabilities
                $Objekt | Add-Member -MemberType NoteProperty -Name CapabilityDescriptions -Value $SerialController.CapabilityDescriptions
                $Objekt | Add-Member -MemberType NoteProperty -Name ConfigManagerErrorCode -Value $SerialController.ConfigManagerErrorCode
                $Objekt | Add-Member -MemberType NoteProperty -Name ConfigManagerUserConfig -Value $SerialController.ConfigManagerUserConfig
                $Objekt | Add-Member -MemberType NoteProperty -Name Description -Value $SerialController.Description
                $Objekt | Add-Member -MemberType NoteProperty -Name DeviceID -Value $SerialController.DeviceID
                $Objekt | Add-Member -MemberType NoteProperty -Name MaxBaudRate -Value $SerialController.MaxBaudRate
                $Objekt | Add-Member -MemberType NoteProperty -Name MaximumInputBufferSize -Value $SerialController.MaximumInputBufferSize
                $Objekt | Add-Member -MemberType NoteProperty -Name MaximumOutputBufferSize -Value $SerialController.MaximumOutputBufferSize
                $Objekt | Add-Member -MemberType NoteProperty -Name MaxNumberControlled -Value $SerialController.MaxNumberControlled
                $Objekt | Add-Member -MemberType NoteProperty -Name Name -Value $SerialController.Name
                $Objekt | Add-Member -MemberType NoteProperty -Name OSAutoDiscovered -Value $SerialController.OSAutoDiscovered
                $Objekt | Add-Member -MemberType NoteProperty -Name PNPDeviceID -Value $SerialController.PNPDeviceID
                $Objekt | Add-Member -MemberType NoteProperty -Name PowerManagementCapabilities -Value $SerialController.PowerManagementCapabilities
                $Objekt | Add-Member -MemberType NoteProperty -Name PowerManagementSupported -Value $SerialController.PowerManagementSupported
                $Objekt | Add-Member -MemberType NoteProperty -Name ProtocolSupported -Value $SerialController.ProtocolSupported
                $Objekt | Add-Member -MemberType NoteProperty -Name ProviderType -Value $SerialController.ProviderType
                $Objekt | Add-Member -MemberType NoteProperty -Name SettableBaudRate -Value $SerialController.SettableBaudRate
                $Objekt | Add-Member -MemberType NoteProperty -Name SettableDataBits -Value $SerialController.SettableDataBits
                $Objekt | Add-Member -MemberType NoteProperty -Name SettableFlowControl -Value $SerialController.SettableFlowControl
                $Objekt | Add-Member -MemberType NoteProperty -Name SettableParity -Value $SerialController.SettableParity
                $Objekt | Add-Member -MemberType NoteProperty -Name SettableParityCheck -Value $SerialController.SettableParityCheck
                $Objekt | Add-Member -MemberType NoteProperty -Name SettableRLSD -Value $SerialController.SettableRLSD
                $Objekt | Add-Member -MemberType NoteProperty -Name SettableStopBits -Value $SerialController.SettableStopBits
                $Objekt | Add-Member -MemberType NoteProperty -Name Status -Value $SerialController.Status
                $Objekt | Add-Member -MemberType NoteProperty -Name StatusInfo -Value $SerialController.StatusInfo
                $Objekt | Add-Member -MemberType NoteProperty -Name Supports16BitMode -Value $SerialController.Supports16BitMode
                $Objekt | Add-Member -MemberType NoteProperty -Name SupportsDTRDSR -Value $SerialController.SupportsDTRDSR
                $Objekt | Add-Member -MemberType NoteProperty -Name SupportsElapsedTimeouts -Value $SerialController.SupportsElapsedTimeouts
                $Objekt | Add-Member -MemberType NoteProperty -Name SupportsIntTimeouts -Value $SerialController.SupportsIntTimeouts
                $Objekt | Add-Member -MemberType NoteProperty -Name SupportsParityCheck -Value $SerialController.SupportsParityCheck
                $Objekt | Add-Member -MemberType NoteProperty -Name SupportsRLSD -Value $SerialController.SupportsRLSD
                $Objekt | Add-Member -MemberType NoteProperty -Name SupportsRTSCTS -Value $SerialController.SupportsRTSCTS
                $Objekt | Add-Member -MemberType NoteProperty -Name SupportsSpecialCharacters -Value $SerialController.SupportsSpecialCharacters
                $Objekt | Add-Member -MemberType NoteProperty -Name SupportsXOnXOff -Value $SerialController.SupportsXOnXOff
                $Objekt | Add-Member -MemberType NoteProperty -Name SupportsXOnXOffSet -Value $SerialController.SupportsXOnXOffSet
                $Objekte += $Objekt
            }
        }
    }
    End
    {
        return $Objekte
    }
}

<#
.Synopsis
   Ruft ein Array der seriellen Anschlussnamen für den aktuellen Computer ab.
.DESCRIPTION
   Verwenden der Get-SerialPortNameCollection Cmdlet, um den aktuellen Computer eine Liste der gültigen seriellen Anschlussnamen abzufragen.
   
   Beispielsweise können Sie mit Hilfe dieses Cmdlet, festzustellen, ob COM1 und COM2 gültige serielle Anschlüsse für den aktuellen Computer sind.
.EXAMPLE
   Get-SerialPortNameCollection
.OUTPUTS
   Ein Object-Array der seriellen Anschlussnamen für den aktuellen Computer.
.NOTES
   Die Namen der Anschlüsse werden aus der Registrierung des Systems (z. B. "HKEY_LOCAL_MACHINE\HARDWARE\DEVICEMAP\SERIALCOMM") abgerufen. 
   Wenn die Registrierung die veraltete oder fehlerhafte Daten enthält die GetPortNames Methode gibt falsche Daten zurück.
#>
function Get-SerialPortNameCollection
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.Ports.Commands',
                  ConfirmImpact='Medium')]
    [Alias()]
    [OutputType([PSObject[]])]
    Param
    (
    )

    Begin
    {
        Write-Verbose -Message "Checking available SerialPorts..."
    }
    Process
    {
        if ($pscmdlet.ShouldProcess("SerialPort", "Get available SerialPort-Names" -f $text))
        {
            $SerialPortNameCollection = @()

            foreach ($portName in ([System.IO.Ports.SerialPort]::getportnames()))
            {
                $SerialPortName = New-Object -TypeName PSObject
                $SerialPortName | Add-Member -MemberType NoteProperty -Name portName -Value $portName

                $SerialPortNameCollection += $SerialPortName
            }

            return $SerialPortNameCollection
        }
    }
    End
    {
        Write-Verbose -Message "Done..."
    }
}

function New-SerialPort
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.Ports.Commands',
                  ConfirmImpact='Medium')]
    [Alias()]
    [OutputType([System.IO.Ports.SerialPort])]
    Param
    (
        [Parameter(Mandatory=$false, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   HelpMessage="Der zu verwendende Anschluss (z. B. COM1).",
                   ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [String] $portName = "COM1",

        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false,
                   Position=1,
                   HelpMessage="Legt die serielle Baudrate fest.",
                   ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1,[int]::MaxValue)]
        [int] $baudRate = 9600,

        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false,
                   Position=2,
                   HelpMessage="Legt das Paritätsprüfungsprotokoll fest.",
                   ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [System.IO.Ports.Parity] $parity = [System.IO.Ports.Parity]::None,

        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false,
                   Position=3,
                   HelpMessage="Legt die Standardlänge der Datenbits pro Byte fest.",
                   ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [ValidateRange(5,8)]
        [int] $dataBits = 8,

        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false,
                   Position=4,
                   HelpMessage="Legt die Standardanzahl von Stoppbits pro Byte fest.",
                   ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [System.IO.Ports.StopBits] $stopBits = [System.IO.Ports.StopBits]::One,

        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false,
                   Position=5,
                   HelpMessage="Legt das Handshakeprotokoll für die Datenübertragung an seriellen Anschlüssen anhand eines Werts von Handshake fest.",
                   ParameterSetName='Default')]
        [ValidateNotNullOrEmpty()]
        [System.IO.Ports.Handshake]$Handshake = [System.IO.Ports.Handshake]"None"
    )

    Begin
    {
        Write-Verbose -Message "Check if the SerialPort is available..."
    }
    Process
    {
        if ($pscmdlet.ShouldProcess("SerialPort", "Create a new instance"))
        {
            try
            {
                $global:SerialPort = [System.IO.Ports.SerialPort]::new($portName, $baudRate, $parity, $dataBits, $stopBits)
                $global:SerialPort.Handshake = $Handshake
                $global:SerialPort.open()

                Write-Verbose ("SerialPort [{0}] is [{1}]." -f $global:SerialPort.PortName, $global:SerialPort.IsOpen)

                Start-Sleep -Milliseconds 1000

                if ($global:SerialPort) {
                    Write-Verbose ("Register EventHandler [DataReceived] for [{0}]" -f $global:SerialPort.PortName)
                    Register-ObjectEvent $global:SerialPort -EventName DataReceived -SourceIdentifier SerialDataReceivedEventHandler

                    Write-Verbose ("Register EventHandler [Disposed] for [{0}]" -f $global:SerialPort.PortName)
                    Register-ObjectEvent $global:SerialPort -EventName Disposed -SourceIdentifier $global:SerialPort.PortName

                    Write-Verbose ("Register EventHandler [ErrorReceived] for [{0}]" -f $global:SerialPort.PortName)
                    Register-ObjectEvent $global:SerialPort -EventName ErrorReceived -SourceIdentifier SerialErrorReceivedEventHandler

                    Write-Verbose ("Register EventHandler [PinChanged] for [{0}]" -f $global:SerialPort.PortName)
                    Register-ObjectEvent $global:SerialPort -EventName PinChanged -SourceIdentifier SerialPinChangedEventHandler

                    return $global:SerialPort
                }
            }
            catch
            {
                Write-Error $_
            }
        }
    }
    End
    {
        Write-Verbose -Message "done..."
    }
}

function Get-SerialPort
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.Ports.Commands',
                  ConfirmImpact='Medium')]
    [Alias()]
    [OutputType([System.IO.Ports.SerialPort])]
    Param
    (
    )

    Begin
    {
        Write-Verbose -Message "Checking SerialPort..."
    }
    Process
    {
        if ($pscmdlet.ShouldProcess("SerialPort", "Get Instance" -f $text))
        {
            if ($global:SerialPort) {
                return $global:SerialPort
            }
            else {
                $ex = [System.Exception]::new("Not found. Please use New-SerialPort Cmdlet.")
                Write-Error -Exception $ex
            }
        }
    }
    End
    {
        Write-Verbose -Message "Done."
    }
}

<#
.Synopsis
    Schließt die Anschlussverbindung, legt die IsOpen-Eigenschaft auf false fest und löscht das interne Stream-Objekt.
.DESCRIPTION
    Schließt die Anschlussverbindung, legt die IsOpen-Eigenschaft auf false fest und löscht das interne Stream-Objekt.
.EXAMPLE
    Close-SerialPort
.NOTES
   IOException -> Der Port ist in einem ungültigen Zustand - oder - Fehler beim um den Status des zugrunde liegenden Anschlusses festzulegen. 
   Zum Beispiel die Parameter zu übergeben, aus dieser SerialPort Objekt war ungültig.
#>
function Close-SerialPort
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.Ports.Commands',
                  ConfirmImpact='Medium')]
    [Alias()]
    Param
    (
    )

    Begin
    {
        try
        {
            Write-Verbose ("Checking open SerialPort...")
            if ( -not $global:SerialPort.isOpen) { 
                $global:SerialPort.open() 
            }
        }
        catch
        {
            throw "SerialPort not found. Please use New-SerialPort Cmdlet."
        }
    }
    Process
    {
        if ($pscmdlet.ShouldProcess("SerialPort", "Closing" -f $text))
        {
            # Prüft, ob eine Instance der Klasse SerialPort vorliegt
            if ($global:SerialPort)
            {
                try 
                {        
                    # Kündigt ein Ereignisabonnement.
                    Unregister-Event -SourceIdentifier SerialDataReceivedEventHandler
                    Unregister-Event -SourceIdentifier SerialErrorReceivedEventHandler
                    Unregister-Event -SourceIdentifier SerialPinChangedEventHandler
                    Unregister-Event -SourceIdentifier $global:SerialPort.PortName
                    Write-Verbose -Message ("EventSubscription for [{0}] are unregistered." -f $global:SerialPort.PortName)

                    # Schließt die Anschlussverbindung, legt die IsOpen-Eigenschaft auf false fest und löscht das interne Stream-Objekt.
                    Write-Verbose -Message ("Closing SerialPort [{0}]." -f $global:SerialPort.PortName)
                    $global:SerialPort.Close()
                
                    # Gibt die von SerialPort verwendeten nicht verwalteten Ressourcen und optional die verwalteten Ressourcen frei.
                    $global:SerialPort.Dispose()
                }
                catch
                {
                }

            }
            else {
                $ex = [System.Exception]::new("Not found. Please use New-SerialPort Cmdlet.")
                Write-Error -Exception $ex
            }
        }
    }
    End
    {
        Write-Verbose -Message "Done..."
        Remove-Variable -Scope Global -Name SerialPort
    }
}

<#
.Synopsis
   Ruft einen Wert ab, der den offenen oder geschlossenen Status des SerialPort-Objekts angibt.
.DESCRIPTION
   Ruft einen Wert ab, der den offenen oder geschlossenen Status des SerialPort-Objekts angibt.
.EXAMPLE
   Get-SerialPortStatus
.NOTES
   ArgumentNullException -> Die IsOpen übergebene Wert ist null.
   ArgumentException -> Die IsOpen übergebene Wert ist eine leere Zeichenfolge ("").
#>
function Get-SerialPortStatus
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.Ports.Commands',
                  ConfirmImpact='Medium')]
    [Alias()]
    [OutputType([bool])]
    Param
    (
    )

    Begin
    {
    }
    Process
    {
        if ($pscmdlet.ShouldProcess("SerialPort", "Checking Status"))
        {
            try
            {
                Write-Verbose -Message "Checking open SerialPort..."
                if ($global:SerialPort) {
                    return $global:SerialPort.IsOpen
                }
                else {
                    $ex = [System.Exception]::new("Not found. Please use New-SerialPort Cmdlet.")
                    Write-Error -Exception $ex
                }
            }
            catch
            {
                $ex = [System.Exception]::new("Not found. Please use New-SerialPort Cmdlet.")
                Write-Error -Exception $ex
            }
        }
    }
    End
    {
        Write-Verbose -Message "Done..."
    }
}

<#
.Synopsis
   Schreibt die angegebene Zeichenfolge und den NewLine-Wert in den Ausgabepuffer.
.DESCRIPTION
   Schreibt die angegebene Zeichenfolge und den NewLine-Wert in den Ausgabepuffer.
.EXAMPLE
   Write-SerialPort -text "hello world!"
.INPUTS
   Die Zeichenfolge, die in den Ausgabepuffer geschrieben werden soll.
.NOTES
   InvalidOperationException -> Der angegebene Port ist nicht geöffnet werden.
   ArgumentNullException -> Der text-Parameter ist null.
   TimeoutException -> Die Write-SerialPort konnte nicht in den Stream geschrieben werden.
#>
function Write-SerialPort
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.Ports.Commands',
                  ConfirmImpact='Medium')]
    [Alias()]
    Param
    (
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false,
                   Position=0,
                   ParameterSetName='Default')]
        [String] $Text,

        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false,
                   Position=0,
                   ParameterSetName='Byte')]
        [byte[]] $Byte
    )

    Begin
    {
        Write-Verbose -Message ("Write data: {0}" -f $text)
    }
    Process
    {
        if ($pscmdlet.ShouldProcess("SerialPort", "Write data: {0}" -f $text))
        {
            if ($pscmdlet.ParameterSetName -eq "Default")
            {
                $global:SerialPort.WriteLine($text)
            }
            if ($pscmdlet.ParameterSetName -eq "Byte")
            {
                $buffer = $Byte
                $offset = 0
                $Global:SerialPort.Write($buffer, $offset, $buffer.Length)
            }
        }
    }
    End
    {
        Write-Verbose -Message "Done..."
    }
}

<#
.Synopsis
   Liest bis zum NewLine-Wert im Eingabepuffer.
.DESCRIPTION
   Liest bis zum NewLine-Wert im Eingabepuffer. Sobald das Ereignis an gibt, dass Daten über einen Port empfangen wurden, der durch das SerialPort-Objekt dargestellt wird. 
.EXAMPLE
   Read-SerialPort
.OUTPUTS
   Der Inhalt des Eingabepuffers bis zum ersten Vorkommen eines NewLine-Werts.
.NOTES
   Da die SerialPort -Klasse puffert Daten aus, und der Stream, der in enthalten die BaseStream Eigenschaft jedoch nicht, gibt es möglicherweise Konflikte dazu, wie viele Bytes zum Lesen verfügbar sind. Die BytesToRead -Eigenschaft kann angeben, dass es zu lesenden Bytes, aber diese Bytes ist möglicherweise nicht zugegriffen werden kann, in den Stream, der in enthalten die BaseStream Eigenschaft, da sie zu gepuffert wurden die SerialPort Klasse.
#>
function Read-SerialPort
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.Ports.Commands',
                  ConfirmImpact='Medium')]
    [Alias()]
    Param
    (
        [int] $Timeout = 3 # Seconds
    )

    Begin
    {
    }
    Process
    {
        if ($pscmdlet.ShouldProcess("SerialPort", "Waiting for event from SerialDataReceivedEventHandler"))
        {
            Write-Verbose "Waiting on data"

            while ($true) {

                #Gibt an, dass Daten über einen Port empfangen wurden, der durch das SerialPort-Objekt dargestellt wird.
                $Event = Wait-Event -SourceIdentifier SerialDataReceivedEventHandler -Timeout $Timeout
                if (-not ($Event))
                {
                    Start-Sleep -Milliseconds 100
                    break
                }
                else
                {                    
                    #Gibt die empfangenen Daten aus.
                    $Event.Sender.ReadLine()
                    Remove-Event -SourceIdentifier $event.SourceIdentifier
                    Remove-Variable -Name Event
                }
            }            
        }
    }
    End
    {
    }
}