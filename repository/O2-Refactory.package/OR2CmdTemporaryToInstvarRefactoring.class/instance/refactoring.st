accessing
refactoring
	^ TemporaryToInstanceVariableRefactoring
		class: self theClass
		selector: self selector
		variable: self selection