navigating
sendersOfMessage
	^ (SystemNavigation default allCallsOn: self selector) asSortedArray collect: 
		[ :ref | 
		O2MessageNode 
			on: self selector
			inMethodReference: ref ]