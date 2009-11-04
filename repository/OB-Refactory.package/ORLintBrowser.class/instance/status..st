actions
status: aString
	status = aString
		ifTrue: [ ^ self ].
	status := aString.
	self relabel: self defaultLabel