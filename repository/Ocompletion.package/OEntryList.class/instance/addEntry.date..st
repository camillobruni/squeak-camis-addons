as yet unclassified
addEntry: aSymbol date: aDate
	| entry |
	entries := entries reject: [:e | e contents = aSymbol].
	entry := ODatedEntry contents: aSymbol type: #selector.
	entry date: aDate.
	entries add: entry.
	entries size > size ifTrue: [entries removeLast]