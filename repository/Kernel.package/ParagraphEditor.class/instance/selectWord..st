nonediting/nontyping keys
selectWord: characterStream
	self closeTypeIn: characterStream.
	self selectWord.
	^ true