browsing
browseSendersOf: aSymbol name: titleString autoSelect: autoSelectString
	^self browseMessageSet: (SystemNavigation default allCallsOn: aSymbol) asSortedCollection name: titleString autoSelect: autoSelectString