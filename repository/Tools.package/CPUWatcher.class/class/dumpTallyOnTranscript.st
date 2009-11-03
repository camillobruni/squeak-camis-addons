as yet unclassified
dumpTallyOnTranscript
	self current ifNotNil: [
		ProcessBrowser dumpTallyOnTranscript: self current tally
	]