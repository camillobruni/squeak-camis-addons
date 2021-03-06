Tests
testComparing

	| ts1 ts2 ts3 c1 c2 le |
	ts1 := self timestampClass date: ('01-10-2000' asDate) time: ('11:55:00 am' asTime).
	ts2 := self timestampClass date: ('07-26-2003' asDate) time: ('22:09:45 am' asTime).
	ts3 := self timestampClass date: ('05-28-1972' asDate) time: ('04:31:14 pm' asTime).

	self
		assert: ts1 = timestamp;
		assert: ts1 hash = timestamp hash;
		assert: timestamp = timestamp copy;
		assert: ts1 < ts2;
		deny: ts1 < ts3.

	c1 := self timestampClass current.
	c2 := self timestampClass current.
	le := (c1 <= c2).
	self assert: le.

