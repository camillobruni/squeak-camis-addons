*Polymorph-Widgets-override
morphicLayerNumberWithin: anOwner
	"Helpful for insuring some morphs always appear in front of or behind others.
	Smaller numbers are in front.
	Fixed here to call #morphicLayerNumber rather than access property directly."

	^self morphicLayerNumber