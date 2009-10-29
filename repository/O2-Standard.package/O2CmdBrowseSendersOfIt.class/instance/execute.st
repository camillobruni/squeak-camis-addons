execution
execute
	| node |
	node := O2SelectorNode on: target selector.
	(requestor announce: (O2ShowSenders of: node)) execute