as yet unclassified
iconNamed: aSymbol
	^ Icons at: aSymbol ifAbsentPut: [self default perform: aSymbol]