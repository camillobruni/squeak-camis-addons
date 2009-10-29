compiling
definition
	^ (O2MethodDefinition 
		source: version source
		inClass: self theClass) callback: 
		[ :sel | 
		version selector = sel 
			ifTrue: [ self class on: version latest ]
			ifFalse: 
				[ O2MethodNode 
					on: sel
					inClass: self theClass ] ]