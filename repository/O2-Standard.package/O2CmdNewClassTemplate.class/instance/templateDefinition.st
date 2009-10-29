private
templateDefinition
	^ O2ClassDefinition 
		environment: self currentEnvironment
		template: (Class template: self currentCategory)