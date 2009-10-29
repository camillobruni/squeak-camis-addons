*ocompletion
createCompletionController
	^ (Optimist ifTrue: [OController] ifFalse: [ECWorkspaceController] ) model: self
	