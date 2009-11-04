accessing
refactoring
	^ RemoveMethodRefactoring 
		removeMethods: (Array with: self currentNode selector)
		from: self currentNode theClass