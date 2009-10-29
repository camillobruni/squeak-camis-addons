*ocompletion
completionController
	| controller | 
	controller := self triggerEvent: #getCompletionController.
	controller ifNil:[ controller := self initializeCompletionController ].
	^controller