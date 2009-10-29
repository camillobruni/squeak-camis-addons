execution
execute
	| definition |
	definition := self templateDefinition.
	definition ifNotNil: [ requestor announce: (O2DefinitionChanged definition: definition) ]