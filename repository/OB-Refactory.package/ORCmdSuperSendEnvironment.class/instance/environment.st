accessing
environment
	| parent environment matcher |
	parent := super environment.
	environment := ParseTreeEnvironment onEnvironment: parent.
	environment label: 'Super-Sends'; matcher: (matcher := ParseTreeSearcher new).
	matcher matches: 'super `@message: ``@args' do: [ :node :answer | node ].
	parent classesAndSelectorsDo: [ :class :selector |
		(matcher executeTree: (class compiledMethodAt: selector) parseTree initialAnswer: nil) notNil
			ifTrue: [ environment addClass: class selector: selector ] ].
	^ environment