testing
testFillingTableFromMethod
	self fillTable.
	(Delay forSeconds: 2) wait.
	table justCompiled: #adaptToCollection:andSend: in: Collection.
	self assert: (table entriesMatching: 'err') first contents = 'error:'.
	self assert: (table entriesMatching: 'is') first contents = 'isSequenceable'