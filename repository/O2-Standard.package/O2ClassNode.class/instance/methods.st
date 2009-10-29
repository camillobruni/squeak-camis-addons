accessing
methods
	^ self theClass selectors collect: 
		[ :each | 
		(MethodReference 
			class: self theClass
			selector: each) asO2Node ]