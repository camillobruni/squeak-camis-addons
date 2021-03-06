execution
execute
	| defPanel s1 s2 text current change |
	defPanel := requestor browser definitionPanel.
	current := target source.
	change := target version source.
	
	s1 := current string.
	s2 := change string.
	s1 = s2
		ifTrue: [^ self inform: 'Exact Match' translated].

	text := TextDiffBuilder
				buildDisplayPatchFrom: s1
				to: s2
				inClass: target theNonMetaClass
				prettyDiffs: false.
	defPanel definition: (OBTextDefinition text: text).