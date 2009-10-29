filtering
displayString: aString forNode: aNode 
	(aNode isKindOf: O2MethodNode) ifFalse: [ ^ aString ].
	^ aNode theClass = theClass 
		ifTrue: [ aString asText addAttribute: TextEmphasis bold ]
		ifFalse: [ aString ]