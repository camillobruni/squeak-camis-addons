building
verticalGroupWith: aBlock 
	| morph |
	morph := O2GroupingMorph new.
	morph layoutPolicy: TableLayout new.
	current 
		addMorph: morph
		frame: (0 @ 0 extent: 1 @ 1).
	self 
		current: morph
		do: aBlock