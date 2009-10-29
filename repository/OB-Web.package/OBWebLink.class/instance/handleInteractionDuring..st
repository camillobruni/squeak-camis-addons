notifications
handleInteractionDuring: aBlock
	aBlock
		on: OBInteractionRequest 
		do: [:response | response handleWith: self].
