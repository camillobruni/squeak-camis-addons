accessing
classComment: aString  stamp: aStamp
	"Store the comment, aString, associated with the object that refers to the receiver."

	self commentStamp: aStamp.
	(aString isKindOf: RemoteString) 
		ifTrue: [classComment := aString]
		ifFalse: [aString isEmptyOrNil
			ifTrue: [classComment := nil]
			ifFalse:
				[self error: 'use aClass classComment:'.
				classComment := RemoteString newString: aString onFileNumber: 2]]
				"Later add priorSource and date and initials?"