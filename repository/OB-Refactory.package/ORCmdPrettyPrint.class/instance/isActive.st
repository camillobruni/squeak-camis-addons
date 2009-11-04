testing
isActive
	^ (target isKindOf: OBTextSelection) or: [ (target isKindOf: OBMethodNode) and: [ (target isKindOf: OBMethodVersionNode) not and: [ requestor isSelected: target ] ] ] 