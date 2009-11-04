accessing
refactoring
	^ self classesAndVariables: [ :classes :variables |
		CreateAccessorsForVariableRefactoring 
			variable: variables first
			class: classes first
			classVariable: false ]