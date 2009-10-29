testing
isActive
	^ (target isKindOf: O2ClassAwareNode) and: [ requestor isSelected: target ]