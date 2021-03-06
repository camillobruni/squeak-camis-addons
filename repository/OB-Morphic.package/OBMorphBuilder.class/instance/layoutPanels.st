private
layoutPanels
	| panes |
	panes := current submorphs select: [ :ea | ea class == OBGroupingMorph ].
	(self shouldUseSpecialLayoutFor: panes) 
		ifTrue: 
			[ panes first layoutFrame bottomFraction: 0.4.
			panes second layoutFrame topFraction: 0.4 ]
		ifFalse: 
			[ panes keysAndValuesDo: 
				[ :index :morph | 
				morph layoutFrame
					topFraction: (index - 1) / panes size;
					bottomFraction: index / panes size ] ].
	panes do: 
		[ :ea | 
		ea 
			on: #mouseEnter
			send: #paneTransition:
			to: current.
		ea 
			on: #mouseLeave
			send: #paneTransition:
			to: current ].
	self style39 ifTrue: [ current addPaneSplitters ]