private
hierarchySendersOf: aSelector 
	| hierarchySenders |
	hierarchySenders := (SystemNavigation default allCallsOn: aSelector) select: 
		[ :ea | 
		(self theClass withAllSuperclasses includes: ea actualClass) or: [ self theClass allSubclasses includes: ea actualClass ] ].
	^ hierarchySenders asSortedArray collect: 
		[ :ref | 
		O2MessageNode 
			on: aSelector
			inMethodReference: ref ]