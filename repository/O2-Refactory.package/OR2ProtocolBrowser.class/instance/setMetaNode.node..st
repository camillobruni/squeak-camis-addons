initialization
setMetaNode: aMetaNode node: aNode 
	| filter |
	filter := OR2HideEnvironmentFilter on: aNode browserEnvironment.
	aMetaNode withAllChildrenDo: [ :each | each addFilter: filter ].
	super 
		setMetaNode: aMetaNode
		node: aNode