building
annotationField: anAnnotationPanel with: aBlock 
	| morph divider |
	morph := self mercuryMorphFor: anAnnotationPanel.
	morph
		vResizing: #rigid;
		color: Color white.
	current ifNotNil: 
		[ current addMorphBack: morph.
		self 
			current: morph
			do: aBlock.
		divider := BorderedSubpaneDividerMorph horizontal
			color: anAnnotationPanel browser defaultBackgroundColor duller;
			styleWith: O2MorphBuilder new.
		current addMorphBack: divider ].
	^ morph