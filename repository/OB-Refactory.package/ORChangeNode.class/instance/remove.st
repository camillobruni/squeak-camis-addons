actions
remove
	self parent isNil ifTrue: [ ^ self ].
	self parent remove: self