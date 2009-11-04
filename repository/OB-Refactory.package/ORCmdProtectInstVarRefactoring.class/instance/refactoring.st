accessing
refactoring
	^ self classAndVariable: [ :class :variable |
		ProtectInstanceVariableRefactoring 
			variable: variable
			class: class ]