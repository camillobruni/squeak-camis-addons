accessing
accept: aText notifying: aController
	| rule |
	text := aText asString.
	rule := self createRuleFor: (self class
		evaluatorClass
			evaluate: text
			for: self
			notifying: aController
			logged: false).
	OBWaitRequest block: [
		rule runOnEnvironment: environment ].
	rule problemCount = 0
		ifTrue: [ OBInformRequest message: 'No matches found.' ]
		ifFalse: [ rule browserInstance open ].
	^ rule problemCount > 0