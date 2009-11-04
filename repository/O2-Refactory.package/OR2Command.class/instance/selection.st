accessing
selection
	^ (target isKindOf: O2TextSelection)
		ifTrue: [ target text asString ]