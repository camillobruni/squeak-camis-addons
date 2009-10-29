testing
testAdditionalLocals
	| model locals |
	model := ECUntypedModel 
		class: ECTestClass
		temporaries: (OrderedCollection 
				with: (ECLocalEntry 
						contents: 'a'
						type: #local)
				with: (ECLocalEntry 
						contents: 'b'
						type: #local))
		additionals: (Array with: (ECLocalEntry 
				contents: 'veryImp'
				type: #local))
		variables: true
		selectors: true.
	locals := model entriesOfType: #local.
	self assert: (locals includes: 'veryImp')