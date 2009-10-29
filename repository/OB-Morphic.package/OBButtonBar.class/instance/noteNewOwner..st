visual
noteNewOwner: aMorph 
	| window |
	window := aMorph containingWindow.
	window isNil ifFalse: [ self adoptPaneColor: window paneColor ]