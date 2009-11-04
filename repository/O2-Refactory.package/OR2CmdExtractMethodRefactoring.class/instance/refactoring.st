accessing
refactoring
	^ ExtractMethodRefactoring 
		extract: self interval
		from: self selector
		in: self theClass