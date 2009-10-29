private - icons
fullScreenIcon
	^ Preferences tinyDisplay
		ifTrue: [MenuIcons smallFullScreenIcon]
		ifFalse: [MenuIcons fullScreenIcon]