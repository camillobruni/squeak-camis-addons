updating
announce: anObject 
	| announcer |
	^ (announcer := OBAnnouncer current) isNil
		ifFalse: [ announcer announce: anObject ]