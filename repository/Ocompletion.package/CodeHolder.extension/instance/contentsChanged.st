*ocompletion
contentsChanged
	super contentsChanged.
	self changed: #annotation.
	self completionController closeMenu