instance creation
onClass: aClass category: aSymbol 
	^ self selection: (O2MethodCategoryNode 
			on: aSymbol
			inClass: aClass)