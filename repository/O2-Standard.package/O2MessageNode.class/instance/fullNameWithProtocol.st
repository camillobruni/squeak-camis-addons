displaying
fullNameWithProtocol
	self isLongList ifTrue: [^self fullName].
	^super fullNameWithProtocol