execution
execute
	| class |
	class := self requestClassToUser.
	class ifNotNil: 
		[ self 
			select: class asO2Node
			with: requestor announcer ]