filtering
limitClassFor: aNode 
	^ limitClass isNil 
		ifTrue: [ self defaultLimitClass ]
		ifFalse: [ limitClass ]