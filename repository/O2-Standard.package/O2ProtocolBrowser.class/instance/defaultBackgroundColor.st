building
defaultBackgroundColor
	| color | 
	color := Preferences browserWindowColor.
	^ color isColor 
		ifFalse: [Color lightGreen]
		ifTrue: [color]