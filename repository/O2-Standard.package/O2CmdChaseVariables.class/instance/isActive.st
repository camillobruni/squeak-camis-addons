testing
isActive
	^ ((target isClassNode) "or: [(target respondsTo: #theClass) and: [target theClass notNil]]")
		and: [requestor isSelected: target]