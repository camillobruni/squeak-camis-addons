accessing
jumpTo: cNode 
	cNode isNil 
		ifTrue: 
			[ self clearSelection.
			self changed: #list.
			panel clearAfter: self ]
		ifFalse: 
			[ self listHolder noteChild: cNode.
			self selectSilently: cNode.
			panel selectionChangedIn: self.
			switch currentNode: cNode.
			self changed: #list ]