accessing
label
	^ String streamContents: [ :stream |
		self isEnabled ifTrue: [
			stream nextPutAll: ': '; nextPutAll: self change name.
			stream position > 30
				ifTrue: [ stream position: 30; nextPutAll: '...' ] ] ]