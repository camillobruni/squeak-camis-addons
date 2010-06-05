as yet unclassified
saveChanges
	| repo workingCopy |
	repo := repository.
	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: selectedPackage).
	workingCopy newVersion ifNotNilDo: [:v |
		(MCVersionInspector new version: v) show.
		Cursor wait showWhile: [repo storeVersion: v].
		MCCacheRepository default cacheAllFileNamesDuring: 
			[repo cacheAllFileNamesDuring: 
				[v allAvailableDependenciesDo:
					[:dep |
					(repo includesVersionNamed: dep info name)
						ifFalse: [repo storeVersion: dep]]]]]