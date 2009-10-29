as yet unclassified
updatePanes
	| columns |
	columns _ model columns.
	columns size > children size
		ifTrue: [self push: (columns allButFirst: children size)]
		ifFalse: [columns size < children size
					ifTrue: [self pop: children size - columns size]].
	self updateSizing