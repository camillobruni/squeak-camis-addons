building
addSubmenu: aString enabled: aBoolean 
	| submenu |
	submenu := self class new.
	items add: (OBWebMenuItem 
				label: aString
				enabled: aBoolean
				submenu: submenu).
	^submenu