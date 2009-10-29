filtering
clickIconColumn: aColumn forNode: aNode
	| filter classes choice index |
	filter := OBClassSortFilter new.
	OBWaitRequest block: [
		classes := filter 
			nodesFrom: aNode classHierarchy
			forNode: aNode ].
	classes size < 2
		ifTrue: [ ^ super clickIconColumn: aColumn forNode: aNode ].
	index := classes indexOf: aNode ifAbsent: [ ^ false ].
	choice := OBChoiceRequest
		prompt: 'Select Class'
		labels: (classes collect: [ :each | 
			filter 
				displayString: each theClassName 
				forParent: aNode child: each ])
		values: classes
		lines: (Array with: index - 1 with: index).
	choice isNil 
		ifFalse: [ choice announceSelectionWith: aColumn browser ].
	^ true