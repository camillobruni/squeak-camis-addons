utils
togglePrettyPrint
	
	self setTextInDefinitionPanel: 
		(self class formatterClass 
			format: target source in: target theClass
			notifying: nil contentsSymbol: nil)