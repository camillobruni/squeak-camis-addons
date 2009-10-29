execution
execute
	| catName |
	catName := self requestCategoryToUser.
	catName ifNotNil: 
		[ target organization addCategory: catName.
		self 
			select: (target categoryNodeNamed: catName)
			with: requestor announcer ]