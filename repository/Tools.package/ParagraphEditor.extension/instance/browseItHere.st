*tools
browseItHere
	"Retarget the receiver's window to look at the selected class, if appropriate.  3/1/96 sw"
	| aSymbol foundClass b |
	(((b := model) isKindOf: Browser) and: [b couldBrowseAnyClass])
		ifFalse: [^ self flash].
	model okToChange ifFalse: [^ self flash].
	self selectionInterval isEmpty ifTrue: [self selectWord].
	(aSymbol := self selectedSymbol) isNil ifTrue: [^ self flash].

	self terminateAndInitializeAround:
		[foundClass := (Smalltalk at: aSymbol ifAbsent: [nil]).
			foundClass isNil ifTrue: [^ self flash].
			(foundClass isKindOf: Class)
				ifTrue:
					[model systemCategoryListIndex: 
						(model systemCategoryList indexOf: foundClass category).
		model classListIndex: (model classList indexOf: foundClass name)]]