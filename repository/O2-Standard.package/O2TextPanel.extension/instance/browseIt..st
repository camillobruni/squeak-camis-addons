*o2-standard-cmds
browseIt: aSymbol 
	| entry |
	entry := self environment 
		at: aSymbol
		ifAbsent: [ nil ].
	entry ifNil: [ ^ self implementorsOfIt: aSymbol ].
	((entry isKindOf: Class) or: [ entry isKindOf: Trait ]) ifFalse: [ entry := entry class ].
	O2CodeBrowser defaultBrowserClass openOnClass: entry.
	^ true