html
jsInitializeOn: aStream
	self jsInitializeSelfOn: aStream.
	aStream space.
	children 
		do: [:ea | ea jsInitializeOn: aStream]
		separatedBy: [aStream space]