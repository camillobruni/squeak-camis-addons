callbacks
addTextCommandsToMenu: aMenu selection: aTextSelection 
	| scan |
	scan := self announce: OBTextCommandScan.
	scan 
		populateMenu: aMenu
		withNodes: {  aTextSelection  }
		forRequestor: self