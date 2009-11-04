testing
isActive
	^ super isActive and: [ self currentNode hasSelector ]