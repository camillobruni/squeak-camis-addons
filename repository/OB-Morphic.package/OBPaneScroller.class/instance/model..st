accessing
model: anObject 
	model isNil ifFalse: [ model removeDependent: self ].
	anObject isNil ifFalse: [ anObject addDependent: self ].
	model := anObject