accessing-conveniance
chooseMultipleFrom: anArray title: aString lines: aCollection 
	anArray isEmpty
		ifTrue: [ self uiCancellationError ].
	anArray size = 1
		ifTrue: [ ^ anArray first ].
	^ (OBMultipleChoiceRequest prompt: aString labels: anArray values: anArray lines: aCollection)
		ifNil: [ self uiCancellationError ]