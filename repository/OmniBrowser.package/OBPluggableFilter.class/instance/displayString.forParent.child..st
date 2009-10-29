filtering
displayString: aString forParent: pNode child: cNode 
	^ parentDisplay isNil 
		ifTrue: 
			[ super 
				displayString: aString
				forParent: pNode
				child: cNode ]
		ifFalse: 
			[ parentDisplay 
				value: aString
				value: pNode
				value: cNode ]