actions
refresh
	self root update: self environment.
	self navigationPanel selectedNode isNil ifFalse: [
		self announcer announce: (OBSelectingNode 
			node: self navigationPanel selectedNode) ].
	self signalRefresh