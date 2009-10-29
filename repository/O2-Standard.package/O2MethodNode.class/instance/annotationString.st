displaying
annotationString
	^ (O2AnnotationRequest 
		onClass: self theClass
		selector: self selector) getAnnotations