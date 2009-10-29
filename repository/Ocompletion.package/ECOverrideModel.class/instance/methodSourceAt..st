private
methodSourceAt: aNumber 
	| method classes selector source methods |
	selector := (self at: aNumber) contentsAsSymbol.
	classes := clazz allSuperclasses.
	methods := classes collect: 
		[ :eachClass | 
		eachClass methodDictionary 
			at: selector
			ifAbsent: [  ] ].
	methods := methods select: [ :each | each notNil ].
	method := methods first.
	source := method getSourceFromFile asString.
	^ source