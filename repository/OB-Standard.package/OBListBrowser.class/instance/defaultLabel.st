accessing
defaultLabel
	label isNil ifFalse: [ ^ label ].
	^ self labelPrefix , ' ' , self root name printString