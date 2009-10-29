*ocompletion
asType
	type = #symbol
		ifTrue: [^ Symbol].
	type = #character
		ifTrue: [^ Character].
	type = #string
		ifTrue: [^ String].
	type = #number
		ifTrue: [^ Number].
	type = #true
		ifTrue: [^ Smalltalk at: #True].
	type = #false
		ifTrue: [^ Smalltalk at: #False].
	type = #arrayEnd
		ifTrue: [^ Array].
	self isBlockEnd
		ifTrue: [^ BlockContext].
	^ nil