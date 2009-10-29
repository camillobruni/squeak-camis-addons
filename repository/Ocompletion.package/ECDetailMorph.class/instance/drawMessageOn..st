drawing
drawMessageOn: aCanvas 
	|  rectangle width browseMessage |
	rectangle _ self bounds top: self bounds bottom - ECMenuMorph messageHeight.
	rectangle _ rectangle left: self contentBounds left.
	aCanvas
		line: rectangle topLeft
		to: rectangle topRight - (1@0)
		color: Color gray.
	rectangle _ rectangle insetBy: 1.
	aCanvas
		drawString: '<- close detail'
		in: rectangle
		font: ECMenuMorph messageFont
		color: Color gray.
	browseMessage _ 'browse ->'.
	width _ ECMenuMorph messageFont widthOfString: browseMessage .
	aCanvas
		drawString: browseMessage
		in: (rectangle left: rectangle right - width)
		font: ECMenuMorph messageFont
		color: Color gray