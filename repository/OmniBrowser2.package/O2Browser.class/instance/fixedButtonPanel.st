accessing
fixedButtonPanel
	^ panels 
		detect: [:ea | ea isFixedButton] 
		ifNone: [nil]