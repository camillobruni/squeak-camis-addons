testing
isActive
	^ super isActive and: [ target isKindOf: O2ClassCategoryNode ]