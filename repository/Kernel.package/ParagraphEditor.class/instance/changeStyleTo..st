menu messages
changeStyleTo: aNewStyle

	paragraph textStyle: aNewStyle.
	paragraph composeAll.
	self recomputeSelection.
