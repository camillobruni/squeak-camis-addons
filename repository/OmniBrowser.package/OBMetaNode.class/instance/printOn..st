printing
printOn: aStream 
	aStream
		nextPutAll: self name;
		nextPut: Character cr.
	edges do: 
		[ :e | 
		e printOn: aStream.
		aStream nextPut: Character cr ]