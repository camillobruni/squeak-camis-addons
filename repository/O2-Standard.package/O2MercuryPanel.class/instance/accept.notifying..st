callbacks
accept: aText notifying: anObject 
	aText asString withBlanksTrimmed ifEmpty: [ ^ self ].
	O2MercuryQuery 
		find: aText
		for: self.
	self changed: #text