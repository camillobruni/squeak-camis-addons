as yet unclassified
messageWithReceiver: aString
	^ (OBAjaxMessage receiver: aString)
		selector: #openMenu;
		arguments: (Array with: menu);
		yourself