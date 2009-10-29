nodes
doubleClick
	(self selectedNode notNil and: [ self selectedNode metaNode doubleClickSelector notNil ])
		ifTrue: [ self selectedNode perform:  self selectedNode metaNode doubleClickSelector ]