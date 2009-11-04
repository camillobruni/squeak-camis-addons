accessing
refactoring
	^ OR2SwapMethodRefactoring 
		swapMethod: self currentNode selector
		in: self currentNode theClass