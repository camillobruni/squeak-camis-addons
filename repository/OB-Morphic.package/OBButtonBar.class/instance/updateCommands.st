updating
updateCommands
	self removeAllMorphs.
	model commands do: [:ea | self addButtonFor: ea].
