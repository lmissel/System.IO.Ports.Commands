#requires -Version 2.0
ConvertFrom-StringData -StringData @'
ArgumentOutOfRangeException	=	Der offset-Parameter oder der count-Parameter liegt außerhalb eines gültigen Bereichs des übergebenen buffer. Entweder offset oder count ist kleiner als 0 (null).
ArgumentNullException			=	Der text-Parameter ist null.
ArgumentException				=	Die Summe von offset und count ist größer als die Länge von buffer.
Win32Exception					=	Die seriellen Anschlussnamen konnten nicht abgefragt werden.
IOException					=	Der angegebene Anschluss wurde nicht gefunden oder konnte nicht geöffnet werden.
TimeoutException				=	Die WriteLine(String)-Methode konnte nicht in den Stream schreiben.
TimeoutExceptionRead			=	Es waren keine Bytes zum Lesen verfügbar.
InvalidOperationException		=	Der angegebene Anschluss ist nicht offen.
INVALID_SOURCE_IDENTIFIER		=	Das Ereignisabonnement für den seriellen Anschluss [{0}] ist nicht vorhanden. Bitte verwende die Open-SerialPort Funktion, um ein seriellen Anschluss zu öffnen.
'@