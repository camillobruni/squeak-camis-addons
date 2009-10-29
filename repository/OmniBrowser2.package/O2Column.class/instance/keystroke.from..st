callbacks
keystroke: aChar from: aMorph 
	| scan |
	self isEmpty ifTrue: [ ^ self ].
	scan := self announcer announce: O2NodeCommandScan.
	scan 
		processKeystroke: aChar
		withNode: self parent
		for: self.
	self hasSelection ifTrue: 
		[ scan 
			processKeystroke: aChar
			withNode: self selectedNode
			for: self ]