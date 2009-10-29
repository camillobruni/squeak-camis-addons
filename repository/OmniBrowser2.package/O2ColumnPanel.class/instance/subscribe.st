updating
subscribe
	self announcer
		observe: O2SelectingNode
			send: #selectNode:
			to: self;
		observe: O2SelectionChanged
			send: #selectionChanged:
			to: self;
		observe: O2NodeCreated
			send: #selectNode:
			to: self;
		observe: O2NodeDeleted
			send: #nodeDeleted:
			to: self.

	"make sure that fixed button panel gets registered after me"
	browser fixedButtonPanel ifNotNilDo: [ :panel | panel subscribe ].
	self flag: #wtf