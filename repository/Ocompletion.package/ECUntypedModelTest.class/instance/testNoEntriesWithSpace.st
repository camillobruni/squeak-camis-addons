testing
testNoEntriesWithSpace
	| model separatorEntry |
	model := ECUntypedModel new.
	self assert: model isEmpty.
	model narrowWith: 'b'.
	separatorEntry := model entries detect: 
					[:each | 
					(each value asString detect: [:char | char isSeparator] ifNone: []) notNil]
				ifNone: [].
	self assert: separatorEntry isNil