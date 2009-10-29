utility
referenceForMethod: selector ofClass: className 
	| classIsMeta symbol |
	classIsMeta := className endsWith: ' class'.
	symbol := classIsMeta 
		ifTrue: [ (className allButLast: 6) asSymbol ]
		ifFalse: [ className ].
	^ MethodReference new 
		setClassSymbol: symbol
		classIsMeta: classIsMeta
		methodSymbol: selector
		stringVersion: symbol , '>>' , selector