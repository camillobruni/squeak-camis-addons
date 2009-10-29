accessing
addArgument: anObject
	arguments ifNil: [arguments _ #()].
	arguments _ arguments copyWith: anObject.