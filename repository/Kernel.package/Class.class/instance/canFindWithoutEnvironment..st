compiling
canFindWithoutEnvironment: varName
	"This method is used for analysis of system structure -- see senders."
	"Look up varName, in the context of the receiver. Return true if it can be found without using the declared environment."

	"First look in classVar dictionary."
	(self classPool bindingOf: varName) ifNotNil:[^true].

	"Next look in shared pools."
	self sharedPools do:[:pool | 
		(pool bindingOf: varName) ifNotNil:[^true].
	].

	"Finally look higher up the superclass chain and fail at the end."
	superclass == nil
		ifTrue: [^ false]
		ifFalse: [^ (superclass bindingOf: varName) notNil].

