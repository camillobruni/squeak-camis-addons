displaying
definition
	^ O2ClassDefinition 
		environment: environment
		template: ((environment at: #Class) template: name)