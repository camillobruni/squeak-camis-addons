actions
annotationRequests
	^(self respondsTo: #defaultAnnotationRequests) 
	     ifTrue: [self defaultAnnotationRequests] ifFalse: [Preferences defaultAnnotationRequests]