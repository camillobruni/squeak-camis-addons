initialization
setMetaNode: aMetaNode node: aNode 
	super 
		setMetaNode: aMetaNode
		node: aNode.
	theClass := aNode theClass.
	filter := O2LimitProtocolFilter on: aNode theClass.
	aMetaNode addFilter: filter