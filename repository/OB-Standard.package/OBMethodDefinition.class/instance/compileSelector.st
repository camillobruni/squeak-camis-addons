accessing
compileSelector
	^ self compileText isNil ifFalse: [ Parser new parseSelector: self compileText ]