initialize-release
initializeClassVars
	(clazz isNil or: [ includeVariables not ]) ifTrue: [ ^ self ].
	classVars := clazz allClassVarNames asSortedCollection.
	classVars := classVars collect: 
		[ :each | 
		ECClassVarEntry 
			contents: each
			type: #classVar ]