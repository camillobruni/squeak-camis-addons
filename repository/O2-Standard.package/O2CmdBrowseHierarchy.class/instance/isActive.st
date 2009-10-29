testing
isActive
	^ ((target isKindOf: O2ClassAwareNode) or: [ (target respondsTo: #theClass) and: [ target theClass notNil ] ]) and: [ requestor isSelected: target ]