testing
testAdding
	self assert: list numEntries = 0.
	list addEntry: #foo.
	self assert: list numEntries = 1.
	