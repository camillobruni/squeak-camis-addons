initialization
on: anObject text: getTextSel accept: setTextSel readSelection: getSelectionSel menu: getMenuSel

	self model: anObject.
	getTextSelector := getTextSel.
	setTextSelector := setTextSel.
	getSelectionSelector := getSelectionSel.
	getMenuSelector := getMenuSel.
	self borderWidth: 1.
	self setText: self getText.
	self setSelection: self getSelection.