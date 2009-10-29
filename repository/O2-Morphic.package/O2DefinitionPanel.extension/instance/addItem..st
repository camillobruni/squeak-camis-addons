*o2-morphic
addItem: classAndMethod 
	"Used by the system when the user clicks on a link in a class comment. For example see class comment of SystemProgressMorph and click on displayProgressAt:from:to:during:."
	| tokens class methodNode |
	tokens := classAndMethod findTokens: Character space.
	tokens size ~= 2 ifTrue: [ ^ self ].
	class := Smalltalk classNamed: tokens first.
	class ifNil: [ ^ self ].
	methodNode := O2MethodNode 
		on: tokens second
		inClass: class.
	methodNode browse