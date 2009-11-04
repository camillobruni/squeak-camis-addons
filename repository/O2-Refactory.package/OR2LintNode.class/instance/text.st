accessing
text
	^ self name asText allBold , (self rationale isEmpty
		ifFalse: [ String cr , String cr , self rationale ]
		ifTrue: [ String new ])