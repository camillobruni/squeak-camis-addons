*o2-morphic
add: label target: anObject selector: aSelector enabled: aBoolean icon: aSymbol
	self add: label target: anObject selector: aSelector.
	self lastItem isEnabled: aBoolean.
	Preferences menuWithIcons
		ifTrue: [self lastItem icon: (self iconNamed: aSymbol)]