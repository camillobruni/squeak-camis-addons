accessing
refactoring
	^ MoveVariableDefinitionRefactoring 
		bindTight: self interval
		in: self theClass
		selector: self selector