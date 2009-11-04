accessing
refactoring
	^ RemoveParameterRefactoring 
		removeParameter: (self chooseFrom: self arguments)
		in: self currentNode theClass
		selector: self currentNode selector