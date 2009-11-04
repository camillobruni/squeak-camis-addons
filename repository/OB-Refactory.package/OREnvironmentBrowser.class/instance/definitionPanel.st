accessing
definitionPanel
	^ self panels 
		detect: [ :each | each isKindOf: OBDefinitionPanel ] 
		ifNone: [ self error: 'No definition panel configured' ]