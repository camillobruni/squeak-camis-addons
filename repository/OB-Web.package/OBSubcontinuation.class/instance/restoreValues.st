as yet unclassified
restoreValues
	| valueStream context |
	valueStream _ values readStream.
	[valueStream atEnd] whileFalse:
		[context _ valueStream next.
		1 to: context class instSize do: [:i | context instVarAt: i put: valueStream next].
		1 to: context size do: [:i | context at: i put: valueStream next]]