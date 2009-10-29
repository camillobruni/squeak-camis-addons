updating
updateSelection
	| oldSelection |
	oldSelection := selection.
	selection := self getSelectionIndex.
	self withButtonAt: oldSelection do: [:button | button selectionChanged].
	self withSelectedButtonDo: [:button | button selectionChanged]