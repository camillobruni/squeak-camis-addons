accessing
refactoring
	^ InlineMethodRefactoring 
		inline: self interval
		inMethod: self selector
		forClass: self theClass