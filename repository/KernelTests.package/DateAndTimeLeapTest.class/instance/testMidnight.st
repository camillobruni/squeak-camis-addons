testing
testMidnight
	self assert: aDateAndTime midnight =  '2004-02-29T00:00:00+00:00'.
	self deny: aDateAndTime midnight =  '2004-02-29T00:00:00+02:00'
