accessing
refactoring
	^ PushDownMethodRefactoring 
		pushDown: (Array with: self currentNode selector)
		from: self currentNode theClass