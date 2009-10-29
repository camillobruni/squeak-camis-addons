updating
updateCommands
	self removeAllMorphs.
	model commands do: [:cmd | self addButtonFor: cmd].
