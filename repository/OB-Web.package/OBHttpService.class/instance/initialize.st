as yet unclassified
initialize
	
	dispatcher _ Dictionary new.
	dispatcher
		at: 'library' put: OBInternalFile dispatcher;
		at: 'icons' put: OBWebIcons dispatcher;
		at: 'windows' put: Dictionary new.