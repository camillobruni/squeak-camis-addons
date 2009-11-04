building
defaultLabel
	^ super defaultLabel , ' on ' , (self environment printStringLimitedTo: 45) , (status isNil ifFalse: [ ' (' , status , ')' ] ifTrue: [ '' ])