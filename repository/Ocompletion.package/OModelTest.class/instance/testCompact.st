initialize-release
testCompact
	self fillModel.
	model expand.
	model noNextModel.
	model narrowWith: 'asd'.
	self assert: model entries size = 5.
	self assert: model entries last contents= 'asdvbn'.
	model contract.
	self assert: model entries size = 3.
	self assert: model entries first contents = 'asdf'.
	model expand.
	model noNextModel.
	model narrowWith: 'in'.
	self assert: model entries size = 2.
	self assert: model entries first contents = 'insect'