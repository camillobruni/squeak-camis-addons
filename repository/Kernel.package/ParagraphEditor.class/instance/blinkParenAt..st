parenblinking
blinkParenAt: parenLocation 
	self text
		addAttribute: TextEmphasis bold
		from: parenLocation
		to: parenLocation.
	lastParentLocation := parenLocation.