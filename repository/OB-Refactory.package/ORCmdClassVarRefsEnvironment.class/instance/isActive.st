testing
isActive
	^ super isActive and: [ (target isKindOf: OBClassNode) or: [ target isKindOf: OBClassVariableNode ] ]