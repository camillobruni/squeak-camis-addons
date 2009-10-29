model callbacks
notify: aString at: anInteger in: aReadStream 
	text _ Text streamContents:
			[:stream |
			1 to: anInteger - 1 do: [:i | stream nextPut: (text at: i)].
			stream nextPutAll: aString.
			anInteger to: text size do: [:i | stream nextPut: (text at: i)]].
	self sendUpdate