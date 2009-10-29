testing
testNumEntries
	self fillTable.
	self assert: table totalNumberOfEntries = ((25 * 25 * 40) + (25 * 40)).