configuration
mercuryPanel
	^ Preferences mercuryPanel ifTrue:[OBMercuryPanel new] ifFalse:[nil]