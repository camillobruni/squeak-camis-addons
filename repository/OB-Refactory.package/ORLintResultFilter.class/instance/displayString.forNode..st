filtering
displayString: aString forNode: aNode
	| problemCount |
	problemCount := aNode problemCount.
	problemCount = 0 ifTrue: [ ^ aString ].
	^ (aString , ' (' , problemCount asString , ')')
		asText addAttribute: TextEmphasis bold