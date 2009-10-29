updating
update: aSymbol 

	super update: aSymbol.
	aSymbol == #accept ifTrue: [ ^self accept ].
	aSymbol == #color ifTrue: [ ^self color: self getColor ].
	aSymbol == #displayWorld  ifTrue: [ ^self currentWorld displayWorld ]