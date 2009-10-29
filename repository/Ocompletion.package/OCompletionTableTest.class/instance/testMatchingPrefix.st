testing
testMatchingPrefix
	| as asa |
	table entriesPerPrefix: 20. 
	self fillAList.
	as := table entriesMatching: 'as'.
	asa := table entriesMatching: 'asa'.
	self assert: as size = 20.
	self assert: asa size = 5.
	self assert: as first contents = 'ashjkl'.
	self assert: asa first contents = 'asasdf'