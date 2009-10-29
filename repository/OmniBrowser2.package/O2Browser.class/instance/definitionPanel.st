accessing
definitionPanel
	^ panels 
		detect: [:ea | ea isDefinition] 
		ifNone: [self error: 'No definition panel configured']