testing
isActive
	^ super isActive and: [ (target isKindOf: OBClassAwareNode) or: [ target isKindOf: OBInstanceVariableNode ] ]