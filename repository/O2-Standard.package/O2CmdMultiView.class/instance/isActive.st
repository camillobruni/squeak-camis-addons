testing
isActive
	^ (target isKindOf: O2MethodNode) and: [ requestor isSelected: target ]