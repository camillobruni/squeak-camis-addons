selecting
fan: aFan selection: index 
	| node |
	self listHolder 
		fan: aFan
		selection: index.
	selection := index.
	(node := self selectedNode) isNil
		ifFalse: [ self listHolder noteChild: node ].
	self switchFilter: self listHolder switchFilter.
	switch refresh.
	self changed: #list