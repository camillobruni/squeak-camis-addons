callbacks
push: aButton
	| index |
	index := buttons indexOf: aButton.
	model perform: setSelectionSelector with: index.