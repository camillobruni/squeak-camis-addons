as yet unclassified
testCompletion
	| entry |
	entry := ECSelectorEntry 
		contents: 'makeItHappen'
		type: #unary:.
	self assert: entry completion = #makeItHappen