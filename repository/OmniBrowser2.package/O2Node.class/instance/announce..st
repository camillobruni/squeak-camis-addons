updating
announce: anObject 
	^ O2Announcer current ifNotNilDo: [ :announcer | announcer announce: anObject ]