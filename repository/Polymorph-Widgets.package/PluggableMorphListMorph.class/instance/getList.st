as yet unclassified
getList
	"Answer the list to be displayed.  Caches the returned list in the 'list' ivar"

	getListSelector isNil ifTrue: [^#()].
	list := model perform: getListSelector.
	list isNil ifTrue: [^ #()].
	^list