accessing
refactoring
	^ InlineTemporaryRefactoring
		inline: self interval
		from: self selector
		in: self theClass