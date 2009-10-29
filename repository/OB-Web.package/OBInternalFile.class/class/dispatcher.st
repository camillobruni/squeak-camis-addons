as yet unclassified
dispatcher
	| dispatcher file |
	dispatcher _ Dictionary new.
	self allSubclassesDo: 
		[:ea | 
		file _ ea new.
		dispatcher at: file name put: file].
	^ dispatcher