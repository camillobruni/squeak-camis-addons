execution
requestCategoryToUser
	^ OBTextRequest 
		prompt: 'Please type new category name'
		template: (self categoryTemplateFor: target organization)