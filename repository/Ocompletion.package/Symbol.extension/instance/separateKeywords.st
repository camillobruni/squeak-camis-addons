*ocompletion
separateKeywords
	^ self isKeyword
		ifFalse: [self]
		ifTrue:
			[String streamContents:
				[:s |
				(self findTokens: ':')
					do: [:ea | s nextPutAll: ea, ':']
					separatedBy: [s nextPutAll: '  ']]]
					