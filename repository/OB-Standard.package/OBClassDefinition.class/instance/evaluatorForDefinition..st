class definition
evaluatorForDefinition: definition
	| tokens |
	tokens := Scanner new scanTokens: definition.
	^ (environment at: tokens first ifAbsent: [nil]) subclassDefinerClass