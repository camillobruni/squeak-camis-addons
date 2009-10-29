building
textfield: aMercuryPanel with: aBlock 
	| morph divider |
	morph := self mercuryMorphFor: aMercuryPanel.
	morph color: Color white.
	current isNil ifFalse: 
		[ current addMorphBack: morph.
		self 
			current: morph
			do: aBlock.
		divider := BorderedSubpaneDividerMorph horizontal
			color: aMercuryPanel browser defaultBackgroundColor duller;
			styleWith: OBPlatform current builder.
		current addMorphBack: divider ].
	^ morph