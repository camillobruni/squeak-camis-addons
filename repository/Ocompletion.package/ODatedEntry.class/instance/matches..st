as yet unclassified
matches: pref
	contents size <= pref size ifTrue: [^ false].
	pref doWithIndex: [:c :i |
		c asLowercase = (contents at: i) asLowercase ifFalse: [^false]].
	^ true