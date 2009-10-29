building
verticalGroupWith: aBlock 
	| morph |
	morph := OBGroupingMorph new.
	morph layoutPolicy: TableLayout new.
	current addMorph: morph frame: (0 @ 0 extent: 1 @ 1).
	self current: morph do: aBlock