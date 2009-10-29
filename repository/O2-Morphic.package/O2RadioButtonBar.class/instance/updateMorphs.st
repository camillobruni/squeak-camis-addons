updating
updateMorphs
	self removeAllMorphs.
	buttons do: [ :button | self addMorphBack: (O2MorphBuilder build: button) ].
	self updateSubmorphColor