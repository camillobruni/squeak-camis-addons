accessing
refactoring
	^ InlineAllSendersRefactoring 
		sendersOf: self currentNode selector
		in: self currentNode theClass