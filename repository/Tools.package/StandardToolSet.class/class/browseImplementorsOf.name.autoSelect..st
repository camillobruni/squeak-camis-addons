browsing
browseImplementorsOf: aSymbol name: titleString autoSelect: autoSelectString
	^self browseMessageSet: (SystemNavigation default allImplementorsOf: aSymbol) asSortedCollection name: titleString autoSelect: autoSelectString