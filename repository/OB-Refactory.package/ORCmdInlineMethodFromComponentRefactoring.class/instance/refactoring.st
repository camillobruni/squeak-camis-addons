accessing
refactoring
	^ InlineMethodFromComponentRefactoring
		inline: self interval
		inMethod: self selector
		forClass: self theClass