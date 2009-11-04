initializing
setMetaNode: aMetaNode node: aNode
	| filter |
	filter := ORHightlightEnvironmentFilter
		on: aNode browserEnvironment.
	aMetaNode withAllChildrenDo: [ :each |
		(self unfilteredNames includes: each name)
			ifFalse: [ each addFilter: filter ] ].
	super setMetaNode: aMetaNode node: aNode