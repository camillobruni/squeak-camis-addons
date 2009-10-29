filtering
displayString: aString forNode: aNode 
	^ nodeDisplay isNil 
		ifTrue: 
			[ super 
				displayString: aString
				forNode: aNode ]
		ifFalse: 
			[ nodeDisplay 
				value: aString
				value: aNode ]