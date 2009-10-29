as yet unclassified
defaultBackgroundColor
	| color | 
	color := Preferences browserWindowColor.
	^ color isColor 
		ifFalse: [Color lightGreen]
		ifTrue: [color]