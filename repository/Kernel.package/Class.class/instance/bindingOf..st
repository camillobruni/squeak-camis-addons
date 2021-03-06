compiling
bindingOf: varName
	"Answer the binding of some variable resolved in the scope of the receiver"
	| aSymbol binding |
	aSymbol := varName asSymbol.

	"First look in classVar dictionary."
	binding := self classPool bindingOf: aSymbol.
	binding ifNotNil:[^binding].

	"Next look in shared pools."
	self sharedPools do:[:pool | 
		binding := pool bindingOf: aSymbol.
		binding ifNotNil:[^binding].
	].

	"Next look in declared environment."
	binding := self environment bindingOf: aSymbol.
	binding ifNotNil:[^binding].

	"Finally look higher up the superclass chain and fail at the end."
	superclass == nil
		ifTrue: [^ nil]
		ifFalse: [^ superclass bindingOf: aSymbol].

