*tools
selectMessageAndEvaluate: aBlock
	"Allow the user to choose one selector, chosen from the currently selected message's selector, as well as those of all messages sent by it, and evaluate aBlock on behalf of chosen selector.  If there is only one possible choice, simply make it; if there are multiple choices, put up a menu, and evaluate aBlock on behalf of the the chosen selector, doing nothing if the user declines to choose any"

	| selector method messages |
	(selector := self selectedMessageName) ifNil: [^ self].
	method := (self selectedClassOrMetaClass ifNil: [^ self])
		compiledMethodAt: selector
		ifAbsent: [].
	(method isNil or: [(messages := method messages) size == 0])
		 ifTrue: [^ aBlock value: selector].
	(messages size == 1 and: [messages includes: selector])
		ifTrue:
			[^ aBlock value: selector].  "If only one item, there is no choice"

	self systemNavigation 
		showMenuOf: messages
		withFirstItem: selector
		ifChosenDo: [:sel | aBlock value: sel]