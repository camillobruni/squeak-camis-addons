constructing
updateSubmorphColor
	| localColor |
	localColor := model browser defaultBackgroundColor.
	self submorphs do: [:ea | ea onColor: localColor muchDarker offColor: localColor twiceDarker].