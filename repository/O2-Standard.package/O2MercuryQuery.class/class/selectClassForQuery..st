private
selectClassForQuery: rawQuery 
	^ rawQuery first = $# 
		ifTrue: 
			[ rawQuery allButFirst first isUppercase 
				ifTrue: [ O2MClassRefsQuery ]
				ifFalse: [ O2MMethodSendersQuery ] ]
		ifFalse: 
			[ (self isClassQuery: rawQuery) 
				ifTrue: [ O2MClassQuery ]
				ifFalse: [ O2MMethodQuery ] ]