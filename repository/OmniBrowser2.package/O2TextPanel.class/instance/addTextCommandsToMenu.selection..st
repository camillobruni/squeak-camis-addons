callbacks
addTextCommandsToMenu: aMenu selection: aTextSelection 
	| scan |
	scan := self announce: O2TextCommandScan.
	scan 
		populateMenu: aMenu
		withNodes: {  aTextSelection  }
		forRequestor: self