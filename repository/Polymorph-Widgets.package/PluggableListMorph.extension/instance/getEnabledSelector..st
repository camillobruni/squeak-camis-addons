*Polymorph-Widgets
getEnabledSelector: aSymbol
	"Set the value of getEnabledSelector"

	self setProperty: #getEnabledSelector toValue: aSymbol.
	self updateEnabled