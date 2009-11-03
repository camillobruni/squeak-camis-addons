as yet unclassified
shutDown
	Browsers do: [ :ea | ea isAutoUpdating ifTrue: [ ea pauseAutoUpdate ]]