printing
jsonWriteOn: aStream
	JsonObject new
		id: id asString;
		items: items;
		jsonWriteOn: aStream