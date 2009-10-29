as yet unclassified
processMessage: aMessage
	(self allowedSelectors includes: aMessage selector)
		ifTrue: [aMessage sendTo: self]
		ifFalse: [self webDoesNotUnderstand: aMessage].
	^ self flushQueue