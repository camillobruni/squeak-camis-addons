initializing
setPanel: aPanel metaNode: aMetanode node: aNode 
	switch := O2Switch inColumn: self.
	panel := aPanel.
	aNode metaNode: aMetanode.
	self basicParent: aNode.
	self clearSelection.
	self subscribe