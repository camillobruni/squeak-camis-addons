*o2-refactory
environmentNamed: aString
	^ environmentDictionaries at: aString ifAbsent: [ SelectorEnvironment new ]