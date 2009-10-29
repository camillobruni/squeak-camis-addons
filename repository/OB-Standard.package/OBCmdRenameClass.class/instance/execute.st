execution
execute
	| newName oldName |
	newName := OBTextRequest 
		prompt: 'Please type new class name'
		template: target theNonMetaClassName asString.
	newName isNil ifTrue: [ ^ self ].
	oldName := target theNonMetaClass name.
	target theNonMetaClass environment 
		renameClassNamed: oldName
		as: newName asSymbol.
	self 
		browseObsoleteRefs: target
		as: oldName