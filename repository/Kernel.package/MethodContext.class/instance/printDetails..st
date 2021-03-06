printing
printDetails: strm
	"Put my class>>selector and instance variables and arguments and temporaries on the stream.  Protect against errors during printing."

	| pe str pos |
	self printOn: strm.
	strm cr.
	strm tab; nextPutAll: 'Receiver: '.
	pe := '<<error during printing>>'.
	strm nextPutAll: ([receiver printStringLimitedTo: 90] ifError: [:err :rcvr | pe]).

	strm cr; tab; nextPutAll: 'Arguments and temporary variables: '; cr.
	str := [(self tempsAndValuesLimitedTo: 80 indent: 2) 
				padded: #right to: 1 with: $x] ifError: [:err :rcvr | pe].
	strm nextPutAll: (str allButLast).

	strm cr; tab; nextPutAll: 'Receiver''s instance variables: '; cr.
	pos := strm position.
	[receiver longPrintOn: strm limitedTo: 80 indent: 2] ifError: [:err :rcvr | 
				strm nextPutAll: pe].
	pos = strm position ifTrue: ["normal printString for an Array (it has no inst vars)"
		strm nextPutAll: ([receiver printStringLimitedTo: 90] ifError: [:err :rcvr | pe])].
	strm peekLast == Character cr ifFalse: [strm cr].