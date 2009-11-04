accessing
refactoring
	^ RenameTemporaryRefactoring
		renameTemporaryFrom: self interval
		to: (self
			request: 'Enter the new variable name:' 
			initialAnswer: self selection)
		in: self theClass
		selector: self selector