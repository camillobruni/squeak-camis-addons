initializing
setMetaNode: aMetaNode node: aNode 
	| filter |
	filter := OR2HideEnvironmentFilter on: aNode browserEnvironment.
	aMetaNode withAllChildrenDo: 
		[ :each | 
		each name = 'Environment' ifFalse: [ each addFilter: filter ] ].
	super 
		setMetaNode: aMetaNode
		node: aNode