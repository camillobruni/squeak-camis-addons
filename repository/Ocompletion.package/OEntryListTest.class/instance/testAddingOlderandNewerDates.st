testing
testAddingOlderandNewerDates
	list addEntry: #foo.
	list addEntry: #bar.
	self assert: list first = #bar.
	list addEntry: #baz date: (DateAndTime now - 2 hours ).
	self assert: list first = #bar.
	list addEntry: #baf date: (DateAndTime now + 1 hour).
	self assert: list first = #baf.
	list addEntry: #foo date: (DateAndTime now + 2 hours ).
	self assert: list first = #foo.