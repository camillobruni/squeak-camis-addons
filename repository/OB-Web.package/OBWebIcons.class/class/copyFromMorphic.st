as yet unclassified
copyFromMorphic
	| class form |
	class _ Smalltalk at: #OBMorphicIcons ifAbsent: [^ self].
	class selectors do: 
		[:sel |
		form _ class iconNamed: sel.
		(form isKindOf: Form) ifTrue: [self compileIcon: sel form: form]]