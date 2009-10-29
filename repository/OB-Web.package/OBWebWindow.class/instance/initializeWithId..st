initialize-release
initializeWithId: aWebIdentifier 
	super initializeWithId: aWebIdentifier.
	link := OBWebLink new.
	link at: self identifier put: self.
	self initializeQueue