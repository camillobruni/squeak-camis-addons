commands
addCommandsToMenu: aMenu 
	| scan nodes |
	scan := self announce: O2NodeCommandScan.
	nodes := self hasSelection 
		ifTrue: 
			[ {  (self parent). (self selectedNode)  } ]
		ifFalse: 
			[ {  (self parent)  } ].
	scan 
		populateMenu: aMenu
		withNodes: nodes
		forRequestor: self