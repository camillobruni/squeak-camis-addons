class list
selectedClassOrMetaClass
	"Answer the currently selected class (or metaclass)."
	messageListIndex = 0 ifTrue: [^nil].
	self setClassAndSelectorIn: [:c :s | ^c]