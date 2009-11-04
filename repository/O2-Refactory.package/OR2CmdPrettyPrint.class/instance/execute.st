execution
execute
	"Now this is utterly ugly, but unfortunately I see no better way doing this."

	| panel definition class morph source |
	panel := requestor browser panels 
		detect: [ :each | each isDefinition ]
		ifNone: [ ^ self ].
	definition := panel getDefinition ifNil: [ ^ self ].
	class := Smalltalk classNamed: #O2PluggableTextMorph.
	class isNil
		ifTrue: [ ^ self ].
	morph := class allSubInstances
		detect: [ :each | each model == panel ]
		ifNone: [ ^ self ].
	source := morph text asString.
	(definition prettyPrint: source) = source
		ifTrue: [ ^ self ].
	requestor browser announce: definition.
	morph hasUnacceptedEdits: true