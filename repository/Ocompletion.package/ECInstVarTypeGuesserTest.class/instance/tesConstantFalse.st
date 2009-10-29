testing
tesConstantFalse
	self 
		guessVariable: 'false'
		in: ECTestClass
		expected: False.
	self 
		guessVariable: 'false'
		in: nil
		expected: False