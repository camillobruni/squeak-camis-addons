execution
execute
	(requestor parent isKindOf: O2AllMethodCategoryNode) 
		ifTrue: 
			[ self 
				select: (O2MethodCategoryNode 
						on: (target theClass organization categoryOfElement: target selector)
						inClass: target theClass)
				with: requestor announcer ]
		ifFalse: 
			[ self 
				select: (O2AllMethodCategoryNode on: target theClass)
				with: requestor announcer ].
	self 
		select: target
		with: requestor announcer