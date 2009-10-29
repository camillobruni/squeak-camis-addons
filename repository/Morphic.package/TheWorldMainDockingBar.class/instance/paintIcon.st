private - icons
paintIcon
	^ Preferences tinyDisplay
		ifTrue: [MenuIcons smallPaintIcon]
		ifFalse: [MenuIcons paintIcon]