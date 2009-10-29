as yet unclassified
processHttpRequest: aRequest 
	^ [self 
		processPath: aRequest pathParts
		content: (aRequest stream next: aRequest contentLength)
		type: aRequest contentType] 
			on: Error
			do: [:error | self processError: error]