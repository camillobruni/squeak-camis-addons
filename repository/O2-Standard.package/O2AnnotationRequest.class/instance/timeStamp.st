requests
timeStamp
	^ self method ifNotNilDo: [:method | Utilities timeStampForMethod: method]