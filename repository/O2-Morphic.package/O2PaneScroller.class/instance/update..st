updating
update: aSymbol
	aSymbol = #sizing ifTrue: [^ self updateSizing].
	aSymbol = #columns ifTrue: [^ self updatePanes].