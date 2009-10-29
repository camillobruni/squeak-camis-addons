building
topNavigationPanel: aPanel with: aBlock 
	| morph divider |
	morph := RectangleMorph new
		layoutPolicy: TableLayout new;
		height: Preferences standardCodeFont height * 2.2;
		listDirection: #leftToRight;
		borderWidth: 0;
		hResizing: #spaceFill;
		vResizing: #rigid;
		wrapCentering: #center;
		cellPositioning: #topLeft;
		rubberBandCells: false;
		layoutInset: 2;
		cellInset: 2;
		color: Color white;
		yourself.
	morph := self 
		current: morph
		do: aBlock.
	current ifNotNil: 
		[ current addMorphBack: morph.
		divider := BorderedSubpaneDividerMorph horizontal
			color: aPanel browser defaultBackgroundColor duller;
			styleWith: O2MorphBuilder new.
		current addMorphBack: divider ].
	^ morph