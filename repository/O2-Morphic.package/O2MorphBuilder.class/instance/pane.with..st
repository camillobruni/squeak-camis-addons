building
pane: aColumn with: aBlock 
	| pane |
	pane := O2Pane new.
	pane
		model: aColumn;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		clipSubmorphs: true;
		color: Color transparent;
		cellInset: 0;
		borderWidth: 0;
		layoutPolicy: ProportionalLayout new;
		addList: (self listMorphForColumn: aColumn).
	current ifNotNil: [ current pushPane: pane ].
	^ self 
		current: pane
		do: aBlock