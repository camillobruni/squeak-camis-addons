testing
allowModel: aModel 
	^ self isEnabled
		and: [aModel respondsTo: #completionController] 