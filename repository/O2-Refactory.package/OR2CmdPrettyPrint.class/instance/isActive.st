testing
isActive
	^ (target isKindOf: O2TextSelection) or: [ (target isKindOf: O2MethodNode) and: [ (target isKindOf: O2MethodVersionNode) not and: [ requestor isSelected: target ] ] ] 