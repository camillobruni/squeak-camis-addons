interaction
handleDirectoryRequest: request 
	| fileDirectory |
	fileDirectory := UIManager default chooseDirectory.
	fileDirectory isNil ifTrue: [ ^ nil ].
	^ fileDirectory pathName