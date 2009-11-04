testing
isActive
	^ super isActive and: [ (target isKindOf: O2ClassAwareNode) or: [ target isKindOf: OBInstanceVariableNode ] ]