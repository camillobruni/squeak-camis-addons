testing
testCaseSensitive
	| model locals |
	self assert: ECPreferences caseSensitive.
	model := ECUntypedModel 
		class: ECTestClass
		temporaries: OrderedCollection new.
	locals := model entriesOfType: #instVar.
	self assert: locals size == 17.
	self assert: (locals includes: 'third').
	self assert: (locals includes: 'constantInteger').
	self assert: (locals includes: 'complexInit2').
	self assert: (locals includes: 'typeSuggestingParameter').
	model narrowWith: 'fo'