constructing
noteNewOwner: aMorph 
	self containingWindow isNil
		ifFalse: [ self adoptPaneColor: self containingWindow paneColor ]