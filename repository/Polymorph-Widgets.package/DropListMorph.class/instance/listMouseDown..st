as yet unclassified
listMouseDown: evt
	"Click outside the list."

	(self listMorph fullContainsPoint: evt position)
		ifTrue: [self listMorph selectionIndex: (self listMorph rowAtLocation: evt position)]
		ifFalse: [self hideList]