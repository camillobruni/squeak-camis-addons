as yet unclassified
printString
	^ String streamContents: [:stream | self printOn: stream]