*ob-standard
browserIconFor: aSelector
	| history |
	(TestResult class methodDictionary includesKey: #historyFor:)
		ifFalse: [ ^ #testGray ].
	history := TestResult historyFor: self.
	((history at: #errors) includes: aSelector)
		ifTrue: [ ^ #testRed ].
	((history at: #failures) includes: aSelector)
		ifTrue: [ ^ #testOrange ].
	((history at: #passed) includes: aSelector)
		ifTrue: [ ^ #testGreen ].
	^ #testGray