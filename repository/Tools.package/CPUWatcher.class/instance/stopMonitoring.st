startup-shutdown
stopMonitoring
	watcher ifNotNil: [
		ProcessBrowser terminateProcess: watcher.
		watcher := nil.
	]