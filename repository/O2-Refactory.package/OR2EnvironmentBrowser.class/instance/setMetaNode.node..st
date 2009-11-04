initializing
setMetaNode: aMetaNode node: aNode
	super setMetaNode: aMetaNode node: aNode.
	announcer
		observe: OBSelectionChanged
		send: #selectionChanged: to: self