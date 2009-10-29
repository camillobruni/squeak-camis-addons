as yet unclassified
allFiles
	| files |
	files _ SortedCollection sortBlock: [:a :b | a name <= b name].
	self allSubclassesDo: [:ea | files add: ea new].
	^ files asArray