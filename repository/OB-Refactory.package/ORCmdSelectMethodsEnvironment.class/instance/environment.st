accessing
environment
	| condition |
	condition := self request: 'Select methods:' initialAnswer: '[ :each | false ]'.
	^ (super environment selectMethods: (self class evaluatorClass evaluate: condition))
		label: 'Methods matching ' , condition.