as yet unclassified
iconActionNamed: aSymbol
    | selector |
     selector := (aSymbol, 'Action') asSymbol.
	^(self default respondsTo: selector) ifTrue: [self default perform: selector] ifFalse: [nil]