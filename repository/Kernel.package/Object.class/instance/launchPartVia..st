user interface
launchPartVia: aSelector
	"Obtain a morph by sending aSelector to self, and attach it to the morphic hand.  This provides a general protocol for parts bins"

	| aMorph |
	aMorph := self perform: aSelector.
	aMorph setProperty: #beFullyVisibleAfterDrop toValue: true.
	aMorph openInHand