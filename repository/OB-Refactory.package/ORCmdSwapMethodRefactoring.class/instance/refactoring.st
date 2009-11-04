accessing
refactoring
	^ ORSwapMethodRefactoring 
		swapMethod: self currentNode selector
		in: self currentNode theClass