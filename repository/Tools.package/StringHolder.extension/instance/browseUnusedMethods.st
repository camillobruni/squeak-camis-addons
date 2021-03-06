*tools
browseUnusedMethods
	| classes unsent messageList cls |
	(cls := self selectedClass)
		ifNil: [^ self].
	classes := Array with: cls with: cls class.
	unsent := Set new.
	classes
		do: [:c | unsent addAll: c selectors].
	unsent := self systemNavigation allUnsentMessagesIn: unsent.
	messageList := OrderedCollection new.
	classes
		do: [:c | (c selectors
				select: [:s | unsent includes: s]) asSortedCollection
				do: [:sel | messageList add: c name , ' ' , sel]].
	self systemNavigation browseMessageList: messageList name: 'Unsent Methods in ' , cls name