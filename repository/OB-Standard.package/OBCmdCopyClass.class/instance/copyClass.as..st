as yet unclassified
copyClass: oldClass as: newName 
	| oldDefinition newDefinition |
	(oldClass environment hasClassNamed: newName) 
		ifTrue: [^ self error: newName , ' already exists'].
	oldDefinition := oldClass definition.
	newDefinition := oldDefinition 
				copyReplaceAll: '#' , oldClass name asString
				with: '#' , newName asString.
	^ Cursor wait showWhile: 
			[| newClass |
			newClass := Compiler evaluate: newDefinition logged: true.
			newClass copyAllCategoriesFrom: oldClass.
			newClass class copyAllCategoriesFrom: oldClass class.
			newClass]