editing keys
duplicate: characterStream
	"Paste the current selection over the prior selection, if it is non-overlapping and
	 legal.  Flushes typeahead.  Undoer & Redoer: undoAndReselect."

	self closeTypeIn.
	(self hasSelection and: [self isDisjointFrom: otherInterval])
		ifTrue: "Something to duplicate"
			[self replace: otherInterval with: self selection and:
				[self selectAt: self pointIndex]]
		ifFalse:
			[self flash].
	^true