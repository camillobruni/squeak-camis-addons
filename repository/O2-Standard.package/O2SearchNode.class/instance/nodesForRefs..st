private
nodesForRefs: refs 
	| classNames nodes |
	classNames := refs collect: [ :ea | ea classSymbol ].
	nodes := classNames asSet collect: [ :ea | O2ClassNode on: (Smalltalk at: ea) ].
	^ nodes asArray sort: [ :a :b | a theClassName <= b theClassName ]