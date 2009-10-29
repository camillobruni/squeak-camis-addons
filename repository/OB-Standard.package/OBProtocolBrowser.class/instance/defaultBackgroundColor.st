building
defaultBackgroundColor
	| color |
	color := Preferences lexiconWindowColor.
	^ color == false 
		ifTrue: [Color lightGreen]
		ifFalse: [color]