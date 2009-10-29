testing
testTitle
	| model |
	model := ECUntypedModel
				class: ECTestClass
				temporaries: #().
	self assert: model title isNil