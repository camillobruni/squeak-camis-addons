as yet unclassified
defaultBackgroundColor
	| color | 
	color := Preferences browserWindowColor.
	^ color == false 
		ifTrue: [Color lightGreen]
		ifFalse: [color]