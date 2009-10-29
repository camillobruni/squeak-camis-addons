children
addAllChildrenTo: aDictionary
	children do: [:ea | ea addWithAllChildrenTo: aDictionary].
	^ aDictionary