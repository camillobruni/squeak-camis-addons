private-roel-typer
guessWithRoelTyper: aString class: aClass 
	| typeInfo foundTypes infos |
	infos := self typeInfosFor: aClass.
	infos ifNil: [ ^ nil ].
	typeInfo := infos 
		at: aString asSymbol
		ifAbsent: [ ^ nil ].
	foundTypes := typeInfo types.
	typeInfo := foundTypes size <= 2 
		ifTrue: [ foundTypes first ]
		ifFalse: 
			[ foundTypes := foundTypes intersection: typeInfo assignments.
			foundTypes 
				ifEmpty: [  ]
				ifNotEmpty: [ foundTypes first ] ].
	typeInfo ifNil: [ ^ nil ].
	^ (typeInfo == UndefinedObject or: [ typeInfo == Object ]) 
		ifTrue: [ ^ nil ]
		ifFalse: [ typeInfo ]