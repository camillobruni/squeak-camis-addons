actions
getAnnotations
	^ String streamContents: 
		[ :aStream | 
		((self annotationRequests collect: [ :request | self perform: request ]) reject: [ :stringOrNil | stringOrNil isEmptyOrNil ]) 
			do: [ :ea | aStream nextPutAll: ea ]
			separatedBy: [ aStream nextPutAll: separator ] ]