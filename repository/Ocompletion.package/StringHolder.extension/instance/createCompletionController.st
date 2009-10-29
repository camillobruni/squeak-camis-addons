*ocompletion
createCompletionController
	^ (Optimist ifTrue: [OController] ifFalse: [ECController] ) model: self
	