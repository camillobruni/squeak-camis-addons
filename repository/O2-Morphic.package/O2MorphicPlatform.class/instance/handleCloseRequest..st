interaction
handleCloseRequest: request
	(SystemWindow allInstances detect: [:ea | ea model = request browser] ifNone: []) ifNotNilDo:
		[:sw |
		sw delete]