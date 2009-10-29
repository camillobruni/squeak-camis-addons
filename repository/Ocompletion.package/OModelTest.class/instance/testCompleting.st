initialize-release
testCompleting
	model narrowWith: 'qwer'.
	self assert: model entries first contents = 'qwer'.
	model narrowWith: 'as'.
	self assert: model entries first contents = 'asdf'.