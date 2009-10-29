callbacks
selection: anInteger
	self listHolder selection: anInteger. 
	self signalSelectionChanged.
	self changed: #selection.
	switch currentNode: self selectedNode
