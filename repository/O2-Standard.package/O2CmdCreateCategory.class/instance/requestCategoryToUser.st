execution
requestCategoryToUser
	^ O2TextRequest 
		prompt: 'Please type new category name'
		template: (self categoryTemplateFor: target organization)