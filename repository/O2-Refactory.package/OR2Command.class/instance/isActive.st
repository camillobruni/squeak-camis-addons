testing
isActive
	(self class takesText and: [ target isKindOf: O2TextSelection ])
		ifTrue: [ ^ true ].
	(self class takesNodes and: [ requestor isSelected: target ])
		ifTrue: [ ^ true ].
	^ false