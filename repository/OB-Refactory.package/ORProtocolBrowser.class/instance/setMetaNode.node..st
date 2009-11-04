initialization
setMetaNode: aMetaNode node: aNode
	| filter |
	filter := ORHideEnvironmentFilter on: aNode browserEnvironment.
	aMetaNode withAllChildrenDo: [ :each | each addFilter: filter ].
	super setMetaNode: aMetaNode node: aNode