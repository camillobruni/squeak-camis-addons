request processing
notFound: aCollection
	| path |
	path _ String streamContents:
		[:stream |
		aCollection do:
			[:ea | 
			stream nextPut: $/.
			stream nextPutAll: ea]].
	^ HttpResponse 
		status: #notFound
		contents: path, ' was not found on this server'