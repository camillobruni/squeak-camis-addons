dropping/grabbing
wantsDroppedMorph: aMorph event: evt

	self isTheRealProjectPresent ifFalse: [^false].
	project world viewBox ifNil: [^false].		"uninitialized"
	^true