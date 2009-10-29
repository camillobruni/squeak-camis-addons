initialization
model: anObject 
	"Set my model and make me me a dependent of the given object."
	model isNil ifFalse: [ model removeDependent: self ].
	anObject isNil ifFalse: [ anObject addDependent: self ].
	model := anObject