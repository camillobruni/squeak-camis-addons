*o2-morphic
addSubmenu: aString enabled: aBoolean
	"Append the given submenu with the given label."

	| item submenu |
	item := MenuItemMorph new.
	submenu := MenuMorph new.
	item 
		contents: aString;
		isEnabled: aBoolean;
		subMenu: submenu.
	self addMorphBack: item.
	^ submenu