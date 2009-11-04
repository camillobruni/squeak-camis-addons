accessing
refactoring
	^ ExtractToTemporaryRefactoring 
		extract: self interval
		to: (self request: 'Enter the new variable name:')
		from: self selector
		in: self theClass