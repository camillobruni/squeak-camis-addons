private-roel-typer
typeInfosFor: aClass 
	| roelTyper |
	(roelTyper := Smalltalk 
		at: #TypeCollector
		ifAbsent: [  ]) ifNil: [ ^ nil ].
	typeInfos ifNil: [ typeInfos := roelTyper typeInstvarsOfClass: aClass ].
	^ typeInfos