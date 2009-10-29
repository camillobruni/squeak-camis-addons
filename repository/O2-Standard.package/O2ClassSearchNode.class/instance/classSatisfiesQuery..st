private
classSatisfiesQuery: aString
	| classQueried |

	classQueried := aString.
	query do: [:aQuery |
		(classQueried includesSubstring: aQuery caseSensitive: false)
			ifTrue: [classQueried := classQueried 
						copyFrom: (classQueried indexOfSubCollection: aQuery) + aQuery size
						to: classQueried size]
			ifFalse:[^false]].
	^true