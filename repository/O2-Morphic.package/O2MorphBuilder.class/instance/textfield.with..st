building
textfield: aMercuryPanel with: aBlock 
	| morph |
	morph := self mercuryMorphFor: aMercuryPanel.
	morph color: Color white.
	current ifNotNil: 
			[current addMorphBack: morph.
			self current: morph do: aBlock].
	^morph