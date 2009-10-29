as yet unclassified
fromString: aString
	^ self fromJson: (Json readFrom: aString readStream)