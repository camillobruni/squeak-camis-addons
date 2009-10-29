html
jsInitializeSelfOn: aStream
	self jsWidgetAccessorOn: aStream.
	aStream 
		nextPutAll: '.init(';
		jsonPrint: self state;
		nextPutAll: ');'