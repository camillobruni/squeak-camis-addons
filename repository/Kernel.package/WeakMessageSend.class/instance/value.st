evaluating
value
	^ arguments isNil
		ifTrue: [self ensureReceiver
				ifTrue: [self receiver perform: selector] ifFalse: []]
		ifFalse: [self ensureReceiverAndArguments
				ifTrue: [self receiver
						perform: selector
						withArguments: (Array withAll: arguments)] ifFalse: []]