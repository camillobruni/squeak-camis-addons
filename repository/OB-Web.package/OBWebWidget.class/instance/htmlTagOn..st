html
htmlTagOn: aStream
	aStream 
		nextPutAll: '<div id="';
		print: id;
		nextPutAll: '" class="';
		nextPutAll: self htmlClass;
		nextPut: $".
	self htmlStyle ifNotNilDo: 
		[:style | aStream
					nextPutAll: ' style="';
					nextPutAll: style;
					nextPut: $"].
	aStream nextPut: $>.
	children do: [:ea | ea htmlTagOn: aStream].
	aStream nextPutAll: '</div>'