as yet unclassified
testInstance
	| entry |
	entry := ECInstVarEntry 
		contents: 'abc'
		type: #instVar:.
	self assert: entry isInstance