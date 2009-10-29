instance creation
onEnvironment: anEnvironment category: aSymbol 
	^ self selection: (O2ClassCategoryNode 
			on: aSymbol
			inEnvironment: anEnvironment)