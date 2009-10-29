building
fixedButtonBar: aPanel with: aBlock 
	| morph |
	morph := O2ButtonBar on: aPanel.
	morph
		height: Preferences standardButtonFont height * 2.2;
		layoutPolicy: TableLayout new;
		vResizing: #rigid;
		hResizing: #shrinkWrap;
		listDirection: #leftToRight;
		rubberBandCells: true;
		borderWidth: 0.
	current addMorphBack: morph.
	self 
		current: morph
		do: aBlock