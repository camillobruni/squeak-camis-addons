accessing
text
	^ super text , (String streamContents: [ :stream |
		stream cr; cr.
		self changes changes
			do: [ :each | stream nextPutAll: each displayString; cr ] ])