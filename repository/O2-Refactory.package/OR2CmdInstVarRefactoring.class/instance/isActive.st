testing
isActive
	^ super isActive and: [ self currentNode isKindOf: O2ClassAwareNode ]