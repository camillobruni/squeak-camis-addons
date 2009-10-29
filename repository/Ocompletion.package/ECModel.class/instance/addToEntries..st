accessing
addToEntries: aCollection 
	| temp caseSensitive |
	caseSensitive := ECPreferences caseSensitive.
	temp := aCollection
				select: [:each | each contents beginsWithEmpty: narrowString caseSensitive: caseSensitive].
	entries addAll: temp