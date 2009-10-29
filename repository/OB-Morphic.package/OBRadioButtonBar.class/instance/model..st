accessing
model: aModel 
	model isNil ifFalse: [ model removeDependent: self ].
	model := aModel.
	model addDependent: self