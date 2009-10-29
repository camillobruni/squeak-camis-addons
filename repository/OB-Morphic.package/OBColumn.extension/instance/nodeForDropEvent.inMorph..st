*ob-morphic
nodeForDropEvent: evt inMorph: pluggableListMorph 
	| index item label |
	index := pluggableListMorph rowAtLocation: evt position.
	index = 0 ifTrue: [^nil].
	item := pluggableListMorph listMorph item: index.
	label := item contents asString withBlanksTrimmed.
	^self children 
		detect: [:child | child displayString asString withBlanksTrimmed = label]
		ifNone: [nil]