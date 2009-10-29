as yet unclassified
testMessage
	| model |
	model := ECTypedModel class: ECTestClass.
	self shouldnt: model hasMessage.
	model narrowWith: 'hagadagadu'.
	self assert: model hasMessage.
	self assert: model message = 'no completions found'