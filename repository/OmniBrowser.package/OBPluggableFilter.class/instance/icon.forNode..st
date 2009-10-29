filtering
icon: aSymbol forNode: aNode 
	^ icon isNil 
		ifTrue: 
			[ super 
				icon: aSymbol
				forNode: aNode ]
		ifFalse: 
			[ icon 
				value: aSymbol
				value: aNode ]