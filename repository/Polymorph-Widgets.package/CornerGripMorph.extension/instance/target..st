*Polymorph-Widgets-override
target: aMorph

	target := aMorph.
	aMorph ifNotNil: [
		self fillStyle: (aMorph theme resizerGripNormalFillStyleFor: self)]