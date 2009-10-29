execution
execute
	| newName |
	newName := O2TextRequest 
		prompt: 'Please type new class name'
		template: target theNonMetaClassName asString.
	newName ifNotNil: 
		[ | oldName |
		oldName := target theNonMetaClass name.
		target theNonMetaClass environment 
			renameClassNamed: oldName
			as: newName asSymbol.
		self 
			browseObsoleteRefs: target
			as: oldName ]