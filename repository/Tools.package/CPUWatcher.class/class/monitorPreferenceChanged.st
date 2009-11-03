as yet unclassified
monitorPreferenceChanged
	Preferences cpuWatcherEnabled
		ifTrue: [ self startMonitoring ]
		ifFalse: [ self stopMonitoring ]