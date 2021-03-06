literals
headerDescription
	"Answer a description containing the information about the form of the 
	receiver and the form of the context needed to run the receiver."

	| s |
	s := '' writeStream.
	self header printOn: s.
	s cr; nextPutAll: '"primitive: '.
	self primitive printOn: s.
	s cr; nextPutAll: ' numArgs: '.
	self numArgs printOn: s.
	s cr; nextPutAll: ' numTemps: '.
	self numTemps printOn: s.
	s cr; nextPutAll: ' numLiterals: '.
	self numLiterals printOn: s.
	s cr; nextPutAll: ' frameSize: '.
	self frameSize printOn: s.
	s cr; nextPutAll: ' isClosureCompiled: '.
	self isBlueBookCompiled not printOn: s.
	s nextPut: $"; cr.
	^ s contents