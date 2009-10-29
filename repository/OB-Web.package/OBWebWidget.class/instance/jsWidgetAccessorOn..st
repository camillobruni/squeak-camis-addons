html
jsWidgetAccessorOn: aStream
	aStream
		nextPutAll: 'Widget.get("';
		print: id;
		nextPutAll: '")'