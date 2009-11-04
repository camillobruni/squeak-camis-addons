accessing
accept: aText notifying: aController
	"Just to make sure that it compiles, try with the standard compiler."
	
	| compilerClass |
	compilerClass := self theClass isNil
		ifTrue: [ Object compilerClass ]
		ifFalse: [ self theClass compilerClass ].
	compilerClass new
		compile: aText asString in: self theClass
		classified: nil notifying: aController
		ifFail: [ ^ false ].
	change 
		class: change changeClass
		protocol: change protocol
		source: aText asString.
	^ true