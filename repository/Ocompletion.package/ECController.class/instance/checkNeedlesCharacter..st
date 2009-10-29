keyboard
checkNeedlesCharacter: aCharacter 
	| result |
	oppositeChar ifNil: [ ^ false ].
	result := oppositeChar = aCharacter.
	result ifTrue: 
		[ editor selectAt: editor caret + 1.
		self invalidateEditorMorph ].
	oppositeChar := nil.
	^ result