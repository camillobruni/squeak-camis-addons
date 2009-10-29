as yet unclassified
testCreateModel
	| text context |
	text := 'testIt: aRectangle
	aRectangle printS'.
	context := self createContextFor: text at: text size.
	self assert: context createModel class == ECTypedModel.
	text := 'testIt:'.
	context := self createContextFor: text at: text size.
	self assert: context createModel class = ECOverrideModel.
	text := 'testIt: rect
	rect is'.
	context := self createContextFor: text at: text size.
	self assert: context createModel class = ECUntypedModel