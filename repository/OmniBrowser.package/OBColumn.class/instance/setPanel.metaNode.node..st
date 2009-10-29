initializing
setPanel: aPanel metaNode: aMetanode node: aNode 
	switch := OBSwitch inColumn: self.
	panel := aPanel.
	aNode metaNode: aMetanode.
	self basicParent: aNode.
	self clearSelection.
	self subscribe