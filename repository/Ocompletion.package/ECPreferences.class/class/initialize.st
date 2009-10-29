as yet unclassified
initialize
	(Preferences preferenceAt: #ecompletionEnabled)
		ifNil: [Preferences
				addPreference: #ecompletionEnabled
				categories: #(#browsing )
				default: true
				balloonHelp: 'Enable, or disable eCompletion - a completion system that works in a workspace, browser and debugger.'].
	(Preferences preferenceAt: #ecompletionCaseSensitive)
		ifNil: [Preferences
				addPreference: #ecompletionCaseSensitive
				categories: #(#browsing )
				default: true
				balloonHelp: 'decide if you want eCompletion to be case sensitive or not.'].
	(Preferences preferenceAt: #ecompletionSmartCharacters)
		ifNil: [Preferences
				addPreference: #ecompletionSmartCharacters
				categories: #(#browsing )
				default: true
				balloonHelp: 'decide if you want eCompletion to use smart characters, e.g, to automatically close brackets.']