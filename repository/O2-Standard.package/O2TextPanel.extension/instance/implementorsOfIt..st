*o2-standard-cmds
implementorsOfIt: aSelector 
	| node |
	node := O2SelectorNode on: aSelector.
	(self announce: (O2ShowImplementors of: node)) execute.
	^ true