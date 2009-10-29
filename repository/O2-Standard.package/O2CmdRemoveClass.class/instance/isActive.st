testing
isActive
	^ (target isKindOf: O2ClassNode) and: [ requestor isSelected: target ]