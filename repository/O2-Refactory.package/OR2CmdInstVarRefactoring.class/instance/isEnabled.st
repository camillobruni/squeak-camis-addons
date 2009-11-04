testing
isEnabled
	(self class = OR2CmdAddInstVarRefactoring or: [ target isKindOf: O2ClassAwareNode ]) ifTrue: [ ^ true ].
	^ self currentNode theClass allInstVarNames includes: self selection