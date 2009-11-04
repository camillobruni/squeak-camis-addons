*o2-refactory
browserClass
	^ self categories size > 1 
		ifTrue: [ OR2CategoryBrowser ]
		ifFalse: [ OR2ClassBrowser ]