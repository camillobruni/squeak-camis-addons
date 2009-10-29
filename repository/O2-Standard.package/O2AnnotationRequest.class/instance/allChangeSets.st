requests
allChangeSets
	^ (ChangeSorter 
		allChangeSetsWithClass: class
		selector: selector) 
		ifNotEmpty: 
			[ String streamContents: 
				[ :aStream | 
				(ChangeSorter 
					allChangeSetsWithClass: class
					selector: selector) size = 1 
					ifTrue: [ aStream nextPutAll: 'only in change set ' ]
					ifFalse: [ aStream nextPutAll: 'in change sets: ' ].
				(ChangeSorter 
					allChangeSetsWithClass: class
					selector: selector) do: 
					[ :aChangeSet | 
					aStream
						nextPutAll: aChangeSet name;
						nextPutAll: ' ' ] ] ]
		ifEmpty: [ 'in no change set' ]