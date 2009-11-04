accessing
refactoring
	^ InlineParameterRefactoring 
		inlineParameter: (self chooseFrom: self arguments)
		in: self currentNode theClass
		selector: self currentNode selector