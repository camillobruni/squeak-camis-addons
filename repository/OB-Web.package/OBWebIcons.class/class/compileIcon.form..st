as yet unclassified
compileIcon: aSelector form: aForm
	| bytes source |
	bytes _ ByteArray streamContents: [:s | PNGReadWriter putForm: aForm onStream: s].
	source _ String streamContents:
		[:stream |
		stream
			nextPutAll: aSelector; cr; 
			tab; nextPutAll: '^ MIMEDocument'; cr;
			tab; tab; nextPutAll: 'contentType: ''image/png'''; cr; 
			tab; tab; nextPutAll: 'content: '; cr; cr;
			print: bytes asString].
	self compile: source classified: 'icons'