*Polymorph-Widgets-override
scrollDownInit
	"Initialize a scroll down (from button) operation.
	Fixed to perform immediately with deferred 
	stepping for subsequent hold of button."

	|bc|
	bc := downButton borderStyle baseColor.
	downButton borderInset.
	downButton borderStyle baseColor: bc.
	self resetTimer.
	self scrollBarAction: #doScrollDown.
	self doScrollDown.
	self
		startStepping: #stepAt:
		at: Time millisecondClockValue + self stepTime
		arguments: nil stepTime: nil.
	Preferences gradientScrollbarLook ifFalse: [^self].
	downButton fillStyle: self pressedButtonFillStyle.
	downButton borderStyle: self pressedButtonBorderStyle