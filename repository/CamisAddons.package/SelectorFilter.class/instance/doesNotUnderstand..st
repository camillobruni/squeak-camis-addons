error handling
doesNotUnderstand: aMessage
	self checkSelector: aMessage selector.
	
	^ self object perform: aMessage selector 
				with: aMessage arguments 