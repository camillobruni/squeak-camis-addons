initializing
setMetaNode: aMetaNode node: aNode 
	| filter |
	filter := OR2HightlightEnvironmentFilter on: aNode browserEnvironment.
	aMetaNode withAllChildrenDo: 
		[ :each | 
		(self unfilteredNames includes: each name) ifFalse: [ each addFilter: filter ] ].
	super 
		setMetaNode: aMetaNode
		node: aNode