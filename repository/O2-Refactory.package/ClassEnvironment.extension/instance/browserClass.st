*o2-refactory
browserClass
	^ self classNames size > 1 
		ifTrue: [ OR2ClassBrowser ]
		ifFalse: [ OR2SingleClassBrowser ]