class initialization
initialize
	"OBMercuryPanel initialize"
	Preferences 
		addPreference: #mercuryPanel
		categories: #('browsing')
		default: true
		balloonHelp: 'Adds the mercury panel to OmniBrowser. This panel is the one on top to search senders, implementors, classes...'