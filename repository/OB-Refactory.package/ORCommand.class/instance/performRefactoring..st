private
performRefactoring: aRefactoring
	"Try to properly label aRefactoring and perform it or open the changes browser, depending on the preferences of the user."

	self label isNil ifFalse: [
		aRefactoring model name: (String streamContents: [ :stream |
			self cluster isNil
				ifFalse: [ stream nextPutAll: self cluster; nextPutAll: ', ' ].
			stream nextPutAll: self label ]) ].
	self waitWhile: [
		Preferences promptOnRefactoring
			ifFalse: [ aRefactoring execute ]
			ifTrue: [
				aRefactoring primitiveExecute.
				ORChangesBrowser openChange: aRefactoring changes ] ]