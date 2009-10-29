private
listMorphForColumn: aColumn 
	^ (O2PluggableListMorph 
		on: aColumn
		list: #list
		selected: #selection
		changeSelected: #selection:
		menu: #menu:
		keystroke: #keystroke:from:)
		getListElementSelector: #listAt:;
		getListSizeSelector: #listSize;
		dragEnabled: aColumn dragEnabled;
		dropEnabled: aColumn dropEnabled;
		borderWidth: 0;
		autoDeselect: false;
		yourself