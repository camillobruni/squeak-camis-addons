menu
getMenu: shiftKeyState 
	"Answer the menu for this text view, supplying an empty menu to be filled in. If the menu selector takes an extra argument, pass in the current state of the shift key."
	| menu aMenu aTitle |
	getMenuSelector isNil ifTrue: [ ^ nil ].
	menu := MenuMorph new defaultTarget: model.
	aTitle := getMenuTitleSelector ifNotNil: [ model perform: getMenuTitleSelector ].
	aMenu := model 
		menu: menu
		shifted: shiftKeyState
		selection: self selectionNode.
	aTitle ifNotNil: [ aMenu addTitle: aTitle ].
	^ aMenu