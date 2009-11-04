testing
isEnabled
	(self class = OR2CmdAddClassVarRefactoring or: [ target isKindOf: O2ClassAwareNode ]) ifTrue: [ ^ true ].
	^ self currentNode theNonMetaClass allClassVarNames includes: self selection