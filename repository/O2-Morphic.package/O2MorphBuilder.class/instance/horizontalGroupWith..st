building
horizontalGroupWith: aBlock 
	| morph |
	morph := O2GroupingMorph new.
	morph layoutPolicy: TableLayout new.
	morph listDirection: #leftToRight.
	current 
		addMorph: morph
		frame: (0 @ 0 extent: 1 @ 1).
	self 
		current: morph
		do: aBlock.
	morph addBorders