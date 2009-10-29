execution
execute
	| newName newClass |
	newName := O2TextRequest 
		prompt: 'Please type new class name'
		template: target theNonMetaClassName asString.
	newName ifNotNil: 
		[ newClass := self 
			copyClass: target theNonMetaClass
			as: newName asSymbol.
		self 
			select: newClass asO2Node
			with: requestor announcer ]