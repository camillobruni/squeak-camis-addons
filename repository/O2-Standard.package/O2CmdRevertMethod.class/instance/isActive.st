testing
isActive
	^ (target isKindOf: O2MethodVersionNode) and: [ requestor isSelected: target ]