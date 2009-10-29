view callbacks
menuShifted: aBoolean selection: aString
	| menu selection |
	selection _ OBTextSelection onAllOf: aString.
	menu _ OBWebMenu new.
	model menu: menu shifted: aBoolean selection: selection.
	menu open.