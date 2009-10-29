*o2-standard-cmds
hierarchyOfIt: aSymbol 
	| entry |
	entry := self environment 
		at: aSymbol
		ifAbsent: [ nil ].
	entry ifNil: [ ^ self implementorsOfIt: aSymbol ].
	((entry isKindOf: Class) or: [ entry isKindOf: Trait ]) ifFalse: [ entry := entry class ].
	O2CodeBrowser hierarchyBrowserClass openOnClass: entry.
	^ true