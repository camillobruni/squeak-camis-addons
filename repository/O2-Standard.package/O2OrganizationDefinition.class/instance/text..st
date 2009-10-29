callbacks
text: aText 
	organizer changeFromString: aText asString.
	O2Announcer current announce: O2RefreshRequired.
	^ true