children
childAt: aSelector labeled: aString put: aMetaNode 
	^ edges add: (O2MetaEdge 
			label: aString
			selector: aSelector
			metaNode: aMetaNode)