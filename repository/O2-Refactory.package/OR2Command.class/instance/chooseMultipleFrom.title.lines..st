accessing-conveniance
chooseMultipleFrom: anArray title: aString lines: aCollection 
	anArray isEmpty
		ifTrue: [ self uiCancellationError ].
	anArray size = 1
		ifTrue: [ ^ anArray ].
	^ (OBMultipleChoiceRequest prompt: aString 
			labels: anArray 
			values: anArray 
			lines: aCollection
			selection: IdentitySet new)
		ifNil: [ self uiCancellationError ]