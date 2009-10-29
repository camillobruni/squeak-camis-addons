testing
testReset
	| asa |
	table entriesPerPrefix: 20. 
	self fillAList.
	asa := table entriesMatching: 'asa'.
	self assert: asa size = 5.
	self assert: asa first contents = 'asasdf'.
	table reset.
	asa := table entriesMatching: 'asa'.
	self assert: asa isEmpty