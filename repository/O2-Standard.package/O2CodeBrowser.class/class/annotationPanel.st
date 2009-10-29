configuration
annotationPanel
	^ Preferences annotationPanes 
		ifTrue: [ O2AnnotationPanel new ]
		ifFalse: [ nil ]