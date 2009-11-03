fill-styles
windowInactiveFillStyleFor: aWindow
	"Return the window inactive fillStyle for the given window."
	
	^ SolidFillStyle new color: aWindow paneColorToUse lighter lighter lighter