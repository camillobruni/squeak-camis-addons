model callbacks
correctFrom: start to: end with: aString 
	self text replaceFrom: start to: end with: aString.
	self sendUpdate.
	^ text