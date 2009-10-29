html
jsInitializeSelfOn: aStream
	aStream 
		nextPutAll: 'Widget.init("';
		print: id;
		nextPutAll: '");'.
	