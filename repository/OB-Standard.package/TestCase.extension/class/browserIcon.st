*ob-standard
browserIcon
	| classHistory |
	self isAbstract
		ifTrue: [ ^ super browserIcon ].
	(TestResult class methodDictionary includesKey: #historyFor:)
		ifFalse: [ ^ #testGray ].
	classHistory := TestResult historyFor: self.
	(classHistory at: #errors) isEmpty
		ifFalse: [ ^ #testRed ].
	(classHistory at: #failures) isEmpty
		ifFalse: [ ^ #testOrange ].
	(classHistory at: #passed) isEmpty
		ifFalse: [ ^ #testGreen ].
	^ #testGray