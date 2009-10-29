building
scroller: aColumnPanel with: aBlock 
	| morph |
	morph := (O2PaneScroller withModel: aColumnPanel)
		name: 'scroller';
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself.
	current ifNotNil: [ current addMorphBack: morph ].
	^ self 
		current: morph
		do: aBlock