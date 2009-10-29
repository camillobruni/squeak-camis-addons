configuration
annotationPanel
	^ Preferences annotationPanes 
		ifTrue: [ OBAnnotationPanel new ]