private
defaultSource
	^ String streamContents: 
		[ :stream | 
		self writeMethodHeaderTo: stream.
		stream
			nextPut: Character cr;
			tab;
			nextPutAll: '"This method does not exist."';
			nextPut: Character cr;
			tab;
			nextPutAll: 'self halt.' ]