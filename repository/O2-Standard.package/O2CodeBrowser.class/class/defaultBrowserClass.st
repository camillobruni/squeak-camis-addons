configuration
defaultBrowserClass
	| browserOpener |
	Smalltalk 
		at: #SystemBrowser
		ifPresent: 
			[ :class | 
			browserOpener := class default.
			(browserOpener name beginsWith: 'O2') ifTrue: [ ^ browserOpener browserClass ] ].
	^ O2SystemBrowser