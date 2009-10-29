as yet unclassified
selection: anInteger 
	filter isNil ifTrue: [ ^ self ].
	filter selection: anInteger.
	self changed: #selection.
	column listChanged