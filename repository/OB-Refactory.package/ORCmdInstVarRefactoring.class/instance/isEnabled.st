testing
isEnabled
	(self class = ORCmdAddInstVarRefactoring or: [ target isKindOf: OBClassAwareNode ])
		ifTrue: [ ^ true ].
	^ self currentNode theClass allInstVarNames includes: self selection