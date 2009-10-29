building
scroller: aColumnPanel with: aBlock 
	| morph |
	morph := (OBPaneScroller withModel: aColumnPanel)
		name: 'scroller';
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself.
	current isNil ifFalse: [ current addMorphBack: morph ].
	^ self 
		current: morph
		do: aBlock