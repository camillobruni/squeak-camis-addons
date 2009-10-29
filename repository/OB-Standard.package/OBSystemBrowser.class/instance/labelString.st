morphic
labelString
	^ self navigationPanel labelString ifNil: [ self defaultLabel ]