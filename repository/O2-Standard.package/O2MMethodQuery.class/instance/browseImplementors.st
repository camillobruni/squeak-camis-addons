private
browseImplementors
	| node |
	node := O2SelectorNode on: pattern asSymbol.
	(browser announce: (O2ShowImplementors of: node)) execute