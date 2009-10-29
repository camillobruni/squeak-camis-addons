navigating
classVariables
	^ self theClass allClassVarNames asArray sort collect: 
		[ :ea | 
		O2ClassVariableNode 
			on: ea
			inClass: self theClass ]