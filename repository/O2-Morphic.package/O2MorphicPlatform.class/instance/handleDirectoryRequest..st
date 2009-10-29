interaction
handleDirectoryRequest: request

	| fileDirectory |
	fileDirectory := UIManager default chooseDirectory.
	fileDirectory == nil ifTrue: [ ^nil ].
	^fileDirectory pathName