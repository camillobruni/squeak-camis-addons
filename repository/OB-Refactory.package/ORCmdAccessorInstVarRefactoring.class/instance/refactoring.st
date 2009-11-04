accessing
refactoring
	^ self classAndVariable: [ :class :variable |
		CreateAccessorsForVariableRefactoring 
			variable: variable
			class: class
			classVariable: false ]