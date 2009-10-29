*omnibrowser2-evaluating
valueWithPossibleArgs: anArray
	^ receiver 
		perform: selector 
		withArguments: (self collectArguments: anArray)