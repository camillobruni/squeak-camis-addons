testing
testForClassInstVars
	| model locals |
	model := ECUntypedModel 
		class: ECTestClass
		temporaries: OrderedCollection new.
	locals := model entriesOfType: #instVar.
	self assert: locals size == 17.
	self assert: (locals includes: 'third').
	self assert: (locals includes: 'constantInteger').
	self assert: (locals includes: 'complexInit2').
	self assert: (locals includes: 'typeSuggestingParameter').
	locals := model entriesOfType: #self.
	self assert: (locals includes: 'self').
	locals := model entriesOfType: #super.
	self assert: (locals includes: 'super').
	model narrowWith: 'fo'.
	locals := model entriesOfType: #instVar.
	self assert: locals size == 1.
	self assert: (locals includes: 'fourth')