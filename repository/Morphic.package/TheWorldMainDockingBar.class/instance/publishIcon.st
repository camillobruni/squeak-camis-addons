private - icons
publishIcon
	^ Preferences tinyDisplay
		ifTrue: [MenuIcons smallPublishIcon]
		ifFalse: [MenuIcons publishIcon]