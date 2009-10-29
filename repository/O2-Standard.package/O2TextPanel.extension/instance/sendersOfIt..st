*o2-standard-cmds
sendersOfIt: aSelector 
	| node |
	node := O2SelectorNode on: aSelector.
	(self announce: (O2ShowSenders of: node)) execute.
	^ true