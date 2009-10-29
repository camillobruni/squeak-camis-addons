updating
update: aSelector
	aSelector = #switch ifFalse: [^ self].
	self hasButton = model wantsButton ifTrue: [^ self].
	model wantsButton
		ifTrue: [self addButton: (self buttonFor: model switch)]
		ifFalse: [self removeButton]