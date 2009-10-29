as yet unclassified
label: aString enabled: aBoolean submenu: aMenu 
	| item |
	item := self basicNew.
	item 
		setLabel: aString
		target: aMenu
		selector: #open
		arguments: #().
	item isEnabled: aBoolean.
	^item