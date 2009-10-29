testing
isActive
	^ (target isClassNode)
		and: [requestor isSelected: target]