testing
isActive
	^ super isActive and: [ target isKindOf: OBMethodCategoryNode ]