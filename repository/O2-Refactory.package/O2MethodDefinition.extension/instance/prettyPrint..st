*o2-refactory
prettyPrint: aString
	^ source := self theClass formatterClass format: aString in: theClass notifying: nil