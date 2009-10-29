instance creation
onClass: aClass selector: aSelector 
	^ self selection: (O2MethodNode 
			on: aSelector
			inClass: aClass)