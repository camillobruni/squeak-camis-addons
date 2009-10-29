dropping/grabbing
formerOwner: aMorphOrNil 
	aMorphOrNil isNil 
		ifTrue: [self removeProperty: #formerOwner]
		ifFalse: [self setProperty: #formerOwner toValue: aMorphOrNil]