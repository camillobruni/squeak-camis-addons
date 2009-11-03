as yet unclassified
update: aSymbol
	"Handle tab changes."

	super update: aSymbol.
	aSymbol == #selectedIndex
		ifTrue: [self updatePageIndex: self selectedPageIndex]