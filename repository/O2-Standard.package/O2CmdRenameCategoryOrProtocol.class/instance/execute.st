execution
execute
	| category |
	category := O2TextRequest 
		prompt: 'Please type new ' , self categoryOrProtocol , ' name'
		template: target name.
	category ifNotNil: 
		[ target renameTo: category.
		self 
			select: (target setName: category)
			with: requestor announcer ]