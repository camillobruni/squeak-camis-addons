navigating
messages
	^ self messageSelectors collect: 
		[ :sel | 
		O2MessageNode 
			on: sel
			inMethod: selector
			inClass: self theClass ]