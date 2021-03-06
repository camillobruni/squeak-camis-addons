private
doRemove
	| methods idxToBeRemoved method |
	self flag: #wtf.
	methods := OrderedCollection new.
	requestor previous isNil ifFalse: 
		[ | selectedNode |
		selectedNode := requestor previous selectedNode.
		(selectedNode isClassNode or: [ selectedNode isMethodCategoryNode ]) ifTrue: 
			[ methods := selectedNode methods.
			idxToBeRemoved := methods indexOf: target ] ].
	target theClass removeSelector: target selector.
	requestor announce: (OBNodeDeleted node: target).
	methods size > 1 ifFalse: [ ^ self ].
	method := methods 
		at: idxToBeRemoved + 1
		ifAbsent: [ methods at: idxToBeRemoved - 1 ].
	self 
		select: method
		with: requestor announcer