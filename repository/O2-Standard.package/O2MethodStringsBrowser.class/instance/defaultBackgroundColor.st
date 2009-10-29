as yet unclassified
defaultBackgroundColor
	| color |
	color := Preferences messageListWindowColor.
	^ color isColor 
		ifFalse: [super defaultBackgroundColor]
		ifTrue: [color]