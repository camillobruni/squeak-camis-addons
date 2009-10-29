messaging
deliverMessage: aMessage
	| receiver |
	aMessage selector = #continue:
		ifTrue: [continuation value: aMessage arguments first]
		ifFalse: 
			[receiver _ objects at: aMessage receiver ifAbsent: [^ self].
			self handleInteractionDuring: [receiver handleMessage: aMessage]]