execution
execute
	| catName |
	catName := self requestCategoryToUser.
	catName isNil ifTrue: [ ^ self ].
	target organization addCategory: catName.
	self 
		select: (target categoryNodeNamed: catName)
		with: requestor announcer