accessing
refactoring
	^ PushUpMethodRefactoring 
		pushUp: (Array with: self currentNode selector)
		from: self currentNode theClass