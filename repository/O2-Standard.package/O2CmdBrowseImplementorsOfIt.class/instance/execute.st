execution
execute
	| node |
	node := O2SelectorNode on: target selector.
	(requestor announce: (O2ShowImplementors of: node)) execute