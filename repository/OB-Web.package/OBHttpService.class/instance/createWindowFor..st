as yet unclassified
createWindowFor: aBrowser
	| window |
	window _ OBWebBuilder build: aBrowser.
	(dispatcher at: 'windows') at: window identifier put: window.
	^ window