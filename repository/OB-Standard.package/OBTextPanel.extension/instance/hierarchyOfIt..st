*ob-standard-cmds
hierarchyOfIt: aSymbol
	| entry |
	entry := self environment at: aSymbol ifAbsent: [nil].
	entry ifNil: [^ self implementorsOfIt: aSymbol].
	((entry isKindOf: Class) or: [entry isKindOf: Trait]) ifFalse: [entry := entry class].
	OBCodeBrowser hierarchyBrowserClass openOnClass: entry.
	^ true