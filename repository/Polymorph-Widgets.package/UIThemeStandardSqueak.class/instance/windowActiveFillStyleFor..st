fill-styles
windowActiveFillStyleFor: aWindow
	"Return the window active fillStyle for the given window."
	
	^ SolidFillStyle new color: aWindow paneColorToUse