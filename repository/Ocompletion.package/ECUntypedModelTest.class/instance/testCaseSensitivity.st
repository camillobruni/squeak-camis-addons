testing
testCaseSensitivity
	| model instances |
	self assert: ECPreferences caseSensitive.
	model := ECUntypedModel 
		class: ECTestClass
		temporaries: OrderedCollection new.
	model narrowWith: 'typesugg'.
	self assert: model isEmpty.
	Preferences 
		setPreference: #ecompletionCaseSensitive
		toValue: false.
	model narrowWith: 'typesugg'.
	instances := model entriesOfType: #instVar.
	self assert: instances size == 2.
	self assert: (instances includes: 'typeSuggestingParameter').
	model narrowWith: 'dict'.
	self assert: model notEmpty.
	self assert: ((model entriesOfType: #selector) includes: 'Dictionary')