accessing
refactoring
	^ RenameClassRefactoring 
		rename: self currentNode theNonMetaClass
		to: (self 
			request: 'Enter new class name:'
			initialAnswer: self currentNode theNonMetaClass name)