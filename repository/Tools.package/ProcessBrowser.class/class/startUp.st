as yet unclassified
startUp
	Browsers do: [ :ea | ea isAutoUpdatingPaused ifTrue: [ ea startAutoUpdate ]]