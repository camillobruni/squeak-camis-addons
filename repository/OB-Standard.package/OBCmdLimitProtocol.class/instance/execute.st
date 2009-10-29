execution
execute
	| menu |
	menu := (MenuMorph entitled: self menuString) defaultTarget: self.
	menu
		add: (self menuLabelForClass: target theClass)
		selector: #limitClass:
		argument: target theClass;
		addLine.
	target theClass allSuperclassesDo: 
			[:each | 
			menu 
				add: (self menuLabelForClass: each)
				selector: #limitClass:
				argument: each].
	menu popUpInWorld