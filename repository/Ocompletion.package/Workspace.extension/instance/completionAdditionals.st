*ocompletion
completionAdditionals
	| additionals |
	additionals := SortedCollection new.
	bindings ifNotNil: 
		[ bindings keysDo: 
			[ :each | 
			additionals add: (ECLocalEntry 
					contents: each
					type: #local) ] ].
	^ additionals