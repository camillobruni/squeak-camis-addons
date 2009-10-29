accessing
node: aNode 
	self definition: (aNode isNil ifFalse: [ aNode definition ])