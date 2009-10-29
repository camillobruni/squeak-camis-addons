as yet unclassified
jsonWriteOn: aStream
	aStream
		nextPut: ${;
		jsonPrint: 'label';
		nextPutAll: ': ';
		jsonPrint: label;
		nextPutAll: ', ';
		jsonPrint: 'isEnabled';
		nextPutAll: ': ';
		jsonPrint: isEnabled;
		nextPut: $}