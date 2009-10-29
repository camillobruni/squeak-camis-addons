testing
isActive
	^ target theClass ~= ProtoObject and: [requestor isSelected: target]