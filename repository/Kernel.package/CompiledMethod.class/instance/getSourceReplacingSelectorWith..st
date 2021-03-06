private
getSourceReplacingSelectorWith: newSelector
	| oldKeywords newKeywords args newSelectorWithArgs source oldSelector s |
	source := self getSource.
	oldSelector := self parserClass new parseSelector: source.
	oldSelector = newSelector ifTrue: [ ^ source ].
	oldKeywords := oldSelector keywords.
	newKeywords := (newSelector ifNil: [self defaultSelector]) keywords.
	self assert: oldKeywords size = newKeywords size.
	args := (self methodClass parserClass new
		parseArgsAndTemps: source string notifying: nil) copyFrom: 1 to: self numArgs.
	newSelectorWithArgs := String streamContents: [:stream |
		newKeywords withIndexDo: [:keyword :index |
			stream nextPutAll: keyword.
			stream space.
			args size >= index ifTrue: [
				stream nextPutAll: (args at: index); space]]].
	s := source string readStream.
	oldKeywords do: [ :each | s match: each ].
	args isEmpty ifFalse: [ s match: args last ].
	^newSelectorWithArgs withBlanksTrimmed asText , s upToEnd