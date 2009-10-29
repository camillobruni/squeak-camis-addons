configuration
initialize
	"OBCodeBrowser initialize"
	Preferences 
		addPreference: #chasingBrowsers
		categories: #('browsing')
		default: true
		balloonHelp: 'Use recursive multi-column browsers for senders, implementors, etc.'