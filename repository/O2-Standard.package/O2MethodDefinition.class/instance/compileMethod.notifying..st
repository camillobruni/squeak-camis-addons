compiling
compileMethod: aText notifying: aController 
	self compileClass: self theClass.
	self compileCategory: self category.
	self compileText: aText.
	^self executePrecompilationValidations 
		ifTrue: [self compileNotifying: aController]
		ifFalse: [nil]