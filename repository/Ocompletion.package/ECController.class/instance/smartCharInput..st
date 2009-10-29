keyboard
smartCharInput: anInteger 
	| caret selection pos content character |
	Preferences ecompletionSmartCharacters ifFalse: [ ^nil ].
	character := anInteger asCharacter.
	(self checkBackspace: anInteger)
		ifTrue: [^ self].
	(self checkNeedlesCharacter: character)
		ifTrue: [^ self].
	oppositeChar := self class smartCharacters
				at: character
				ifAbsent: [^ nil].
	caret := editor caret.
	selection := editor selection.
	content := WriteStream on: String new.
	content nextPut: character;
		 nextPutAll: selection;
		 nextPut: oppositeChar.
	editor zapSelectionWith: content contents.
	pos := caret + 1.
	editor selectFrom: pos to: pos + selection size - 1.
	self invalidateEditorMorph.
	selection
		ifNotEmpty: [oppositeChar := nil]