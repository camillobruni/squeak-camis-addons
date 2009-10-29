configuration
panels
	^ {self topPanel. self navigationPanel. self annotationPanel. self definitionPanel} reject: [:ea | ea isNil]