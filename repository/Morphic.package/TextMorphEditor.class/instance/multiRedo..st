multi level undo
multiRedo: readAheadStream
	self closeTypeIn.
	self multiRedoWithCount: 1.
	^true
