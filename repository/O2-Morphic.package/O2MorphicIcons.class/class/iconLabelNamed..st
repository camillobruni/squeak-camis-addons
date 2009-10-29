as yet unclassified
iconLabelNamed: aSymbol
	^ IconLabels at: aSymbol ifAbsentPut: [self default perform: (aSymbol, 'Label') asSymbol]