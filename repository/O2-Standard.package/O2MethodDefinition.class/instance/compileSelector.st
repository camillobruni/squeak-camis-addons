accessing
compileSelector
	^ self compileText ifNotNil: [Parser new parseSelector: self compileText]