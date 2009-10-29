sending
jsonWriteOn: aStream
	aStream 
		nextPut: ${;
		jsonPrint: 'receiver';
		nextPut: $:;
		jsonPrint: self receiver;
		nextPutAll: ', ';
		jsonPrint: 'selector';
		nextPut: $:;
		jsonPrint: self selector;
		nextPutAll: ', ';
		jsonPrint: 'arguments';
		nextPut: $:;
		jsonPrint: self arguments;
		nextPut: $}