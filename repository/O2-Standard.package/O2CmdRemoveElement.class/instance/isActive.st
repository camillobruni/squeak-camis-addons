testing
isActive
	^ (target isKindOf: O2CollectionNode) and: [ requestor hasSelection ]