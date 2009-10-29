*ob-morphic
toggleMorphic: anObject
	"This seems to be somehow required to properly refersh the checkbox."

	self toggle: anObject.
	World restoreDisplay