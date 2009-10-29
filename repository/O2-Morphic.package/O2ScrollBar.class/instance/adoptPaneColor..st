accessing
adoptPaneColor: aColor
	"Adopt the given pane color"
	super adoptPaneColor: aColor.
	aColor ifNil:[^self].
	self sliderColor: aColor.