building
fixedButtonBar: aPanel with: aBlock 
	| morph |
	morph := OBButtonBar on: aPanel.
	morph
		height: Preferences standardButtonFont height * 2.5;
		layoutPolicy: TableLayout new;
		vResizing: #rigid;
		hResizing: #spaceFill;
		listDirection: #leftToRight;
		rubberBandCells: true;
		borderWidth: 0.
	current addMorphBack: morph.
	self current: morph do: aBlock