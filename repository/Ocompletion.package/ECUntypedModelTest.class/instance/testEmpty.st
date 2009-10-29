testing
testEmpty
	| model |
	model := ECUntypedModel new.
	self assert: model isEmpty.
	self assert: model entries isEmpty.
	self assert: model entryCount == 0