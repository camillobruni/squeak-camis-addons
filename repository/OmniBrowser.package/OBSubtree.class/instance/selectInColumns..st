as yet unclassified
selectInColumns: aCollection 
	| column stream col |
	column := aCollection first.
	stream := state readStream.
	stream atEnd ifFalse: 
		[ column 
			fan: stream next
			selection: stream next ].
	[ stream atEnd ] whileFalse: 
		[ column := (col := column 
			nextColumnWithFan: stream next
			selection: stream next) isNil 
			ifTrue: [ column next ]
			ifFalse: [ col ] ]