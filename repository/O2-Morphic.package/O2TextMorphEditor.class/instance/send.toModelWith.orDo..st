model access
send: aSelector toModelWith: args orDo: aBlock
	self terminateAndInitializeAround:
		[(model respondsTo: aSelector)
			ifTrue: [(model perform: aSelector withArguments: args)
						ifFalse: [self flash]]
			ifFalse: aBlock]