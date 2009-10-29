requests
timeStamp
	^ self method isNil
		ifFalse: [ Utilities timeStampForMethod: self method ]