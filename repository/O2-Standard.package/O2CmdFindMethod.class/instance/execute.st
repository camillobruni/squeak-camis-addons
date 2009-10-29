execution
execute
	| selection method |
	selection := self chooseSelector.
	selection ifNotNil: 
		[ method := O2MethodNode 
			on: selection
			inClass: target theClass.
		self 
			select: method
			with: requestor announcer ]