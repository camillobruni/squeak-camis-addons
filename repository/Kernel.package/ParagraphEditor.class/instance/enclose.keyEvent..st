editing keys
enclose: characterStream keyEvent: keyEvent
	"Insert or remove bracket characters around the current selection.
	 Flushes typeahead."

	| char left right startIndex stopIndex oldSelection which text |
	char := keyEvent keyCharacter.
	self closeTypeIn.
	startIndex := self startIndex.
	stopIndex := self stopIndex.
	oldSelection := self selection.
	which := '([<{"''' indexOf: char ifAbsent: [ ^true ].
	left := '([<{"''' at: which.
	right := ')]>}"''' at: which.
	text := paragraph text.
	((startIndex > 1 and: [stopIndex <= text size])
		and:
		[(text at: startIndex-1) = left and: [(text at: stopIndex) = right]])
		ifTrue:
			["already enclosed; strip off brackets"
			self selectFrom: startIndex-1 to: stopIndex.
			self replaceSelectionWith: oldSelection]
		ifFalse:
			["not enclosed; enclose by matching brackets"
			self replaceSelectionWith:
				(Text string: (String with: left), oldSelection string ,(String with: right)
					emphasis: emphasisHere).
			self selectFrom: startIndex+1 to: stopIndex].
	^true