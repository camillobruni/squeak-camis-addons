accessing
refactoring
	^ ExtractMethodToComponentRefactoring
		extract: self interval
		from: self selector
		in: self theClass