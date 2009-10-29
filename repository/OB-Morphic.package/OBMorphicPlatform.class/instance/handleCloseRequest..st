interaction
handleCloseRequest: request 
	(SystemWindow allInstances 
		detect: [ :ea | ea model = request browser ]
		ifNone: [ ^ nil ]) delete