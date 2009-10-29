updating
updateMorphs
	| builder |
	builder := OBPlatform current builder.
	self removeAllMorphs.
	buttons do: [ :button | self addMorphBack: (builder build: button) ].
	self updateSubmorphColor