as yet unclassified
responseWithContent: content type: type
	^ HttpResponse
		fromString: content
		contentType: type