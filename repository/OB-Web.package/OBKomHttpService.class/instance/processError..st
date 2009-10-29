as yet unclassified
processError: anError
	self halt.
	^ HttpResponse basicNew
		status: #serverError;
		contentType: MIMEDocument contentTypePlainText;
		contents: (anError class name, ': ', anError messageText) readStream;
		yourself