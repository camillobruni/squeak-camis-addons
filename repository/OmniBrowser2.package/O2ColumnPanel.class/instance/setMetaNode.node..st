initializing
setMetaNode: aMetaNode node: aNode 
	root := aNode.
	root metaNode: aMetaNode.
	self pushColumn: (O2Column 
			inPanel: self
			metaNode: aMetaNode
			node: root).
	minPanes - self columns size timesRepeat: [ self pushColumn: self emptyColumn ]