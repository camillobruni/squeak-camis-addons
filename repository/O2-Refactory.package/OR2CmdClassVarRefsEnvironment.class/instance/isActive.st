testing
isActive
	^ super isActive and: [ (target isKindOf: O2ClassNode) or: [ target isKindOf: O2ClassVariableNode ] ]