execution
execute
	| browser |
	browser := OR2SystemBrowser on: self environment.
	browser jumpTo: target.
	browser open