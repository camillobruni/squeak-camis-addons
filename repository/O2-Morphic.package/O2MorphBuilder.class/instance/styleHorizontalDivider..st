style
styleHorizontalDivider: divider
	self style39
		ifTrue: [divider height: 3]
		ifFalse:
			[divider
				borderWidth: 2;
				borderInset]