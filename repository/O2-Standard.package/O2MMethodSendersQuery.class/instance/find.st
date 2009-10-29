executing
find
	| node |
	node := O2SelectorNode on: pattern asSymbol.
	(browser announce: (O2ShowSenders of: node)) execute