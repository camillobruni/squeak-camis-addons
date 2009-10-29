compiling
fileIn
	self theClass isNil
		ifTrue: [ ^ self ].
	self theClass
		compile: self source
		classified: self category
		withStamp: self stamp
		notifying: nil