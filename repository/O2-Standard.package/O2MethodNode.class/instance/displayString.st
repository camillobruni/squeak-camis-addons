displaying
displayString
	^ [(self theClass includesLocalSelector: selector) 
		ifTrue: [super displayString]
		ifFalse: [super displayString asText addAttribute: TextEmphasis italic]] 
			onDNU: #includesLocalSelector:
			do: [super displayString]