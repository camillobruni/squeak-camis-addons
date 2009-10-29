testing
testFillRate
	self assert: table fillRate = 0.
	self fillAList.
	self assert: table fillRate > 0.
	self assert: table fillRate < 0.1.
	table reset.
	self assert: table fillRate = 0