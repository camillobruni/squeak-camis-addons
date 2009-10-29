testing
testMaxSize
	self assert: list numEntries = 0.
	list addEntry: #foo1.
	self assert: list numEntries = 1.
	list addEntry: #foo2 date: DateAndTime now + 2 seconds.
	self assert: list numEntries = 2.
	list addEntry: #foo3 date: DateAndTime now + 3 seconds.
	self assert: list numEntries = 3.
	list addEntry: #foo4 date: DateAndTime now + 4 seconds.
	self assert: list numEntries = 4.
	list addEntry: #foo5 date: DateAndTime now + 5 seconds.
	self assert: list numEntries = 5.
	self assert: list first = #foo5.
	self assert: list last = #foo1.
	list addEntry: #foo6 date: DateAndTime now + 6 seconds.
	self assert: list numEntries = 5.
	self assert: list first = #foo6.
	self assert: list last = #foo2