as yet unclassified
filter: aFilter 
	filter := aFilter.
	filter isNil ifTrue: [ ^ self ].
	filter activate.
	self changed: #list