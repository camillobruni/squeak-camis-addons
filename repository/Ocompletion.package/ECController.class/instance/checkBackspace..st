keyboard
checkBackspace: anInteger 
	anInteger ~= 8
		ifTrue: [^ false].
	oppositeChar
		ifNil: [^ false].
	editor selectFrom: editor caret - 1 to: editor caret;
		 zapSelectionWith: '';
		 selectAt: editor caret.	self invalidateEditorMorph.
	^ true