as yet unclassified
jsInitializeSelfOn: aStream
	self jsWidgetAccessorOn: aStream.
	aStream 
		nextPutAll: '.setSizing(';
		jsonPrint: model sizing;
		nextPutAll: ');'