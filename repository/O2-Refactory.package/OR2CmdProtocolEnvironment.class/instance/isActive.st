testing
isActive
	^ super isActive and: [ target isKindOf: O2MethodCategoryNode ]