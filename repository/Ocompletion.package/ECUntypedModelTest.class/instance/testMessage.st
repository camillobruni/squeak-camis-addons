testing
testMessage
	| model |
	model := ECUntypedModel 
		class: ECTestClass
		temporaries: #('a' 'b' ).
	self assert: model notEmpty.
	self assert: model hasMessage.
	self assert: model message = 'press key for selectors'.
	model narrowWith: 'b'.
	self shouldnt: model hasMessage.
	model narrowWith: ''.
	self assert: model hasMessage.
	self assert: model message = 'press key for selectors'.
	model narrowWith: 'hagadagadu'.
	self assert: model hasMessage.
	self assert: model message = 'no completions found'.
	model := ECUntypedModel new.
	self assert: model hasMessage.
	self assert: model message = 'press key for selectors'