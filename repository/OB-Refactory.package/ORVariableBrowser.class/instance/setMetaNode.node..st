initializing
setMetaNode: aMetaNode node: aNode
	| filter |
	filter := ORHideEnvironmentFilter on: aNode browserEnvironment.
	aMetaNode withAllChildrenDo: [ :each | 
		each name = 'Environment'
			ifFalse: [ each addFilter: filter ] ].
	super setMetaNode: aMetaNode node: aNode