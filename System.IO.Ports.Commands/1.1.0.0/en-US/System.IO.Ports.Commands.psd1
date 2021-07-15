ConvertFrom-StringData @'
ArgumentOutOfRangeException			=	The offset parameter or the count parameter is outside a valid range of the passed buffer. Either offset or count is less than 0 (zero).
ArgumentNullException				=	The text parameter is null.
ArgumentException					=	The sum of offset and count is greater than the length of buffer.
Win32Exception						=	The serial port names could not be queried.
IOException							=	The specified port was not found or could not be opened.
TimeoutException					=	The WriteLine(String) method could not write to the stream.
TimeoutExceptionRead				=	There were no bytes available for reading.
InvalidOperationException			=	The specified port is not open.
INVALID_SOURCE_IDENTIFIER			=	The event subscription for the serial port [{0}] does not exist. Please use the Open-SerialPort function to open a serial port.
'@