class list
selectedMessageCategoryName 
	"Answer the name of the selected message category or nil."
	messageListIndex = 0 ifTrue: [^ nil].
	^ self selectedClassOrMetaClass organization categoryOfElement: self selectedMessageName