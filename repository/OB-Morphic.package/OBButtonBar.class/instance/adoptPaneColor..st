visual
adoptPaneColor: aColor
	self submorphs do: [:ea | ea onColor: aColor offColor: aColor whiter]