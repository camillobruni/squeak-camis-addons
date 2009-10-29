navigating
instanceVariables
	^ self theClass allInstVarNames asArray sort collect: 
		[ :ea | 
		O2InstanceVariableNode 
			on: ea
			inClass: self theClass ]