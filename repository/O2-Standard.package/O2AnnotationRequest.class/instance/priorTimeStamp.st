requests
priorTimeStamp
	^ (VersionsBrowser 
		timeStampFor: selector
		class: class
		reverseOrdinal: 2) ifNotNilDo: [:stamp | 'prior time stamp: ' , stamp]