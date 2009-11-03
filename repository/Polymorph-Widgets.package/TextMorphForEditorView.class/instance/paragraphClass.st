as yet unclassified
paragraphClass
	"Answer an appropriate paragraph class."
	
	container ifNil: [^MultiNewParagraphWithSelectionColor].
	^super paragraphClass