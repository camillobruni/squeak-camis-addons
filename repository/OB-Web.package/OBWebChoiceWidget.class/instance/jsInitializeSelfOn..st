as yet unclassified
jsInitializeSelfOn: aStream
	self jsWidgetAccessorOn: aStream.
	aStream 
		nextPutAll: '.update(';
		jsonPrint: self state;
		nextPutAll: ');'