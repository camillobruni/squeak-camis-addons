initializing
setClass: aClass category: aString source: aText selection: anInterval 
	theClass := aClass.
	category := aString.
	source := aText.
	selection := anInterval.
	callback := 
	[ :sel | 
	O2MethodNode 
		on: sel
		inClass: theClass ]