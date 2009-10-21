*CamisAddons
testSubFromTo
	self assert: ('123456' subFrom: 1 to: 1) = '1'.
	self assert: ('123456' subFrom: 3 to: 3) = '3'.
	self assert: ('123456' subFrom: -1 to: -1) = '6'.
	self assert: ('123456' subFrom: -3 to: -3) = '4'.
	
	self assert: ('123456' subFrom: 1 to: -1) = '123456'.
	self assert: ('123456' subFrom: 2 to: -2) = '2345'.
	
	self assert: ('123456' subFrom: -1 to: 1) = '654321'.
	self assert: ('123456' subFrom: -2 to: 2) = '5432'.