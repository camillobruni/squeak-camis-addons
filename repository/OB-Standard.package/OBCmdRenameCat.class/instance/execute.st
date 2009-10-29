execution
execute
	| category |
	category := OBTextRequest 
		prompt: 'Please type new category name'
		template: target name.
	category isNil ifTrue: [ ^ self ].
	target renameTo: category.
	self 
		select: (target setName: category)
		with: requestor announcer