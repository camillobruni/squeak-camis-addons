accessing
defaultLabel
	label ifNotNil: [^label].
	^ self labelPrefix, ' ', self root name printString, ' [', self root childNodes size printString, ']'