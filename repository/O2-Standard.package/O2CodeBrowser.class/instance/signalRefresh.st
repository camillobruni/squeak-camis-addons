updating
signalRefresh
	changeEvent == true ifTrue: [ ^ super signalRefresh ].
	self announcer announce: (O2RefreshRequired for: changeEvent)