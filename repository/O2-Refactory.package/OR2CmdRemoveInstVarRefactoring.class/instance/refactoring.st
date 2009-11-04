accessing
refactoring
	^ self classAndVariable: [ :class :variable |
		RemoveInstanceVariableRefactoring 
			remove: variable
			from: class ]