navigation
classes
	| refs classNames nodes |
	refs := SystemNavigation default allCallsOn: (Smalltalk associationAt: query ifAbsent: [^#()]).
	classNames := refs collect: [:ea | ea classSymbol].
	nodes := classNames asSet collect: [:ea | OBClassNode on: (Smalltalk at: ea)].
	^ nodes asArray sort: [:a :b | a theClassName <= b theClassName]