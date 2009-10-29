requests
priorTimeStamp
	| stamp |
	^ (stamp := VersionsBrowser 
		timeStampFor: selector
		class: class
		reverseOrdinal: 2) isNil
			ifFalse: [ 'prior time stamp: ' , stamp ]