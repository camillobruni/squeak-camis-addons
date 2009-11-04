filtering
displayString: aString forParent: aParentNode child: aNode
	^ (aNode withinBrowserEnvironment: environment)
		ifFalse: [ aString asText addAttribute: TextEmphasis italic ]
		ifTrue: [ aString ]