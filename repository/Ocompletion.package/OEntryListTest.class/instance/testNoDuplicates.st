testing
testNoDuplicates
	self assert: list numEntries = 0.
	list addEntry: #foo.
	self assert: list numEntries = 1.
	list addEntry: #foo.
	self assert: list numEntries = 1.
	list addEntry: #bar.
	self assert: list numEntries = 2.
	list addEntry: #foo.
	self assert: list numEntries = 2.
	