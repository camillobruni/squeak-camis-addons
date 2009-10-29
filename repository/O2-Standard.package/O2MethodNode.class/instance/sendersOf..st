private
sendersOf: aSelector 
	| senders isLongList |
	senders := (SystemNavigation default allCallsOn: aSelector) asSortedArray.
	isLongList := senders size > 100.
	^ senders collect: 
		[ :ref | 
		O2MessageNode 
			on: aSelector
			inMethodReference: ref
			isLongList: isLongList ]