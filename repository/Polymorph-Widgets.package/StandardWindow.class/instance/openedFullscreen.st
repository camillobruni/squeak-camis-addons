as yet unclassified
openedFullscreen
	"Should activate and update the layout."

	self allMorphs do: [:m | m layoutChanged].
	self activate