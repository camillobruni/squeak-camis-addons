as yet unclassified
testPrintOn
	| entry |
	entry := ECSelectorEntry 
		contents: 'compute'
		type: #unary:.
	self assert: 'ECSelectorEntry(compute,unary:)' = entry printString