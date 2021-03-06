class definition
defineClass: definition notifying: aController
	| evaluator newClass |
	(self confirmDefinition: definition) ifFalse: [^ false].
	evaluator := self evaluatorForDefinition: definition.
	newClass := evaluator
				evaluate: definition
				notifying: aController
				logged: true.
	newClass ifNil: [^ false].
	self signalSelectionOf: newClass.
	^ true
