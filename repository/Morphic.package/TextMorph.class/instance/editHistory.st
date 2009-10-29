multi level undo
editHistory
	editHistory ifNil: [ editHistory := TextMorphCommandHistory new].
	^editHistory
