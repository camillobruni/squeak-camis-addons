execution
execute
	| class definition |
	class := target theNonMetaClass.
	definition := O2ClassDefinition 
		environment: class environment
		template: (Class template: class category).
	requestor announce: (O2DefinitionChanged definition: definition)