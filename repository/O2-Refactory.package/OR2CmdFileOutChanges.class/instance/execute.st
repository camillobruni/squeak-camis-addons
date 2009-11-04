execution
execute
	| changes |
	changes := String streamContents: [ :stream |
		stream
			header;
			timeStamp.
		self browser root changes
			do: [ :each | stream cr; cr; print: each change ] ].
	FileStream 
		writeSourceCodeFrom: changes readStream
		baseName: self browser root change name
		isSt: true