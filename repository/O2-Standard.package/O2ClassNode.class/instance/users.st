navigating
users
	| nodes |
	nodes := (SystemNavigation default allCallsOn: (theClass environment associationAt: theClass name)) collect: 
		[ :ref | 
		O2ClassRefNode 
			on: self name
			inMethod: ref ].
	^ nodes asArray sort: [ :a :b | a theClassName <= b theClassName ]