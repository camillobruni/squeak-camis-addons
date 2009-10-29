*ocompletion
isConstant
	^ self isBlockEnd
		or: [#(#false #true #string #number #symbol #character #arrayEnd ) includes: type]