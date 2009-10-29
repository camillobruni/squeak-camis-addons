messaging
processMessage: aMessage
	
	^ mutex critical:
		[OBSubcomputation do: 
			[:escape | 
			computation _ escape.
			self deliverMessage: aMessage].
		self flushQueue]