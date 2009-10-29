private
templateDefinition
	^ O2ClassDefinition 
		environment: self currentEnvironment
		template: (Class 
				templateForSubclassOf: self currentClass
				category: self currentCategory)