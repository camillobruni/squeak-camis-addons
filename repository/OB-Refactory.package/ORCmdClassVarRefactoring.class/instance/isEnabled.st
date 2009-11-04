testing
isEnabled
	(self class = ORCmdAddClassVarRefactoring or: [ target isKindOf: OBClassAwareNode ])
		ifTrue: [ ^ true ].
	^ self currentNode theNonMetaClass allClassVarNames includes: self selection