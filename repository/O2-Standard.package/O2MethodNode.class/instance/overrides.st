navigating
overrides
	| classes |
	classes := OrderedCollection new.
	self 
		addOverridersOf: self selector
		inClass: self theClass
		to: classes.
	^ classes collect: 
		[ :ea | 
		O2MethodNode 
			on: selector
			inClass: ea ]