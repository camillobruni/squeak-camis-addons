updating
nodeDeleted: announcement 
	"This gets called if an action causes the currently selected node to be deleted."
	self selectedNode = announcement node ifFalse: [ ^ self ].
	self listHolder refresh.
	self changed: #list.
	self selection: 0