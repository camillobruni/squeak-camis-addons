initialization
setMetaNode: aMetaNode node: aNode
	| filter |
	filter := ORHightlightEnvironmentFilter on: aNode selectorEnvironment.
	aMetaNode withAllChildrenDo: [ :each | each addFilter: filter ].
	super setMetaNode: aMetaNode node: aNode