parenblinking
blinkParen
	lastParentLocation ifNotNil:
		[self text string size >= lastParentLocation ifTrue: [
			self text
				addAttribute: TextEmphasis bold
				from: lastParentLocation
				to: lastParentLocation]]
