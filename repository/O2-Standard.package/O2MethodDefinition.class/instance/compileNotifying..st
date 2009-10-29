compiling
compileNotifying: aController 
	"This is a little convoluted because I want it to work whether or not
	UndeclaredVariable exists. If it does exist, install a handler, otherwise
	just compile the method with no special handling. -cwp 2007-10-15"
	
	| compileBlock exception |
	compileBlock := [self compileClass 
						compile: self compileText
						classified: self compileCategory
						notifying: aController].
	exception := Smalltalk classNamed: #ParserNotification.
	^ exception
		ifNil: [compileBlock value]
		ifNotNil: 
			[compileBlock
				on: exception
				do: [:exc | self convertToChoice: exc]]