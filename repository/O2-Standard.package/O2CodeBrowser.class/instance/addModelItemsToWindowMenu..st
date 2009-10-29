morphic
addModelItemsToWindowMenu: aMenu 
	Smalltalk 
		at: #SystemBrowser
		ifPresent: 
			[ :class | 
			class 
				addRegistryMenuItemsTo: aMenu
				inAccountOf: O2SystemBrowserAdaptor new ]