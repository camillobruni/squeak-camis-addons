as yet unclassified
selection
	^ filter isNil 
		ifFalse: [ filter selection ]
		ifTrue: [ 0 ]