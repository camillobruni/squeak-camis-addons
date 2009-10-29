updating
stepAt: milliseconds in: aSystemWindow
	changeEvent ifNotNil: [self signalRefresh.
		"v := Time millisecondsToRun: [self signalRefresh].
		Transcript show: 'Time to refresh = ', v printString; cr]"
	].
	self clearChanges.