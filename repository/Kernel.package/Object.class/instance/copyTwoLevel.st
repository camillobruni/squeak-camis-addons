copying
copyTwoLevel
	"one more level than a shallowCopy"

	| newObject class index |
	class := self class.
	newObject := self clone.
	newObject == self ifTrue: [^ self].
	class isVariable
		ifTrue: 
			[index := self basicSize.
			[index > 0]
				whileTrue: 
					[newObject basicAt: index put: (self basicAt: index) shallowCopy.
					index := index - 1]].
	index := class instSize.
	[index > 0]
		whileTrue: 
			[newObject instVarAt: index put: (self instVarAt: index) shallowCopy.
			index := index - 1].
	^newObject