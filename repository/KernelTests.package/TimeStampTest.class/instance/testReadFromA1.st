testing
testReadFromA1
	|ts|
	ts := TimeStamp current.
 	self assert: (ts = (TimeStamp fromString: ts asString)).