actions
openSearchBrowserOn: searchNode 
	^ self browser isSearchBrowser 
		ifFalse: [ (O2SearchBrowser with: searchNode) open ]
		ifTrue: 
			[ self browser root addChild: searchNode.
			(self announce: O2AboutToChange) isVetoed 
				ifTrue: [ self browser noteChanges ]
				ifFalse: [ self announce: (O2SelectingNode node: searchNode) ] ]