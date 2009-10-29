testing
testForClassVars
	| model classVars |
	model := ECUntypedModel 
		class: ECTestClass
		temporaries: OrderedCollection new.
	classVars := model entriesOfType: #classVar.
	self assert: classVars size >= 2.
	self assert: (classVars includes: 'SuperClassVar').
	self assert: (classVars includes: 'ClassVar')