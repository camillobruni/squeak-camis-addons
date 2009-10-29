testing
isActive
	^ target isMethodCategoryNode and: [requestor isSelected: target]