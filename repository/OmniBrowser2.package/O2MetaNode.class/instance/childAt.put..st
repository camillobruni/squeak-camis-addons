children
childAt: aSelector put: aMetaNode 
	^ edges add: (O2MetaEdge 
			selector: aSelector
			metaNode: aMetaNode)