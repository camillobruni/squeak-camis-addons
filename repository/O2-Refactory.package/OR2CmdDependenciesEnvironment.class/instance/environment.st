accessing
environment
	"Build an environment with all the static dependnecies."

	| result parent |
	result := ClassEnvironment new.
	parent := super environment.
	parent classesDo: [ :each |
		"(1) super classes"
		(each superclass isNil and: [ (parent includesClass: each superclass) not ])
			ifTrue: [ self add: each superclass to: result ] ].
	parent classesAndSelectorsDo: [ :class :selector |
		"(2) extended classes"
		(parent includesClass: class)
			ifFalse: [ self add: class superclass to: result ].
		"(3) referenced classes"
		(class compiledMethodAt: selector) literals allButLast do: [ :literal |
			(literal isVariableBinding and: [ literal value isBehavior and: [ (parent includesClass: literal value) not ]])
				ifTrue: [ self add: literal value superclass to: result ] ] ].
	^ result label: 'External Dependencies of ' , parent label