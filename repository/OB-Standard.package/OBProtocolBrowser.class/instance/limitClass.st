accessing
limitClass
	^ limitClass isNil 
		ifTrue: [ self defaultLimitClass ]
		ifFalse: [ limitClass ]