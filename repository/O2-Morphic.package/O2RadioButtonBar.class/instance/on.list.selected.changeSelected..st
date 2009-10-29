initialize-release
on: aModel list: listSelector selected: selectionGetter changeSelected: selectionSetter 
	self model: aModel.
	selection := 0.
	getListSelector := listSelector.
	getSelectionSelector := selectionGetter.
	setSelectionSelector := selectionSetter.
	self initGeometry.
	self updateList.