testing
testListMatchingCase
	list addEntry: 'foo'.
	list addEntry: 'BAR'.
	self assert: (list entriesMatching: 'FOO') first contents = 'foo'.
	self assert: (list entriesMatching: 'b') first contents = 'BAR'.
	self assert: (list entriesMatching: 'nothinghere') isEmpty.
	