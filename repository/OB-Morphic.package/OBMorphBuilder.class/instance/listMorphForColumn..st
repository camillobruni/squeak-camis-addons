private
listMorphForColumn: aColumn
	^ (OBPluggableListMorph
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
			doubleClickSelector: #doubleClick;
			alwaysShowScrollBars: false;
			borderWidth: 0;
			autoDeselect: false;
			yourself