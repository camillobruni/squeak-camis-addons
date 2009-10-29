*ocompletion
initializeCompletionController
	| controller |
	controller := self createCompletionController.
	self 
		when: #getCompletionController
		evaluate: (MessageSend 
				receiver: controller
				selector: #yourself).
	^ controller