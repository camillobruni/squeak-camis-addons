accessing
refactoring
	^ MoveMethodRefactoring 
		selector: self currentNode selector
		class: self currentNode theClass
		variable: (self chooseFrom: self instanceVariables)