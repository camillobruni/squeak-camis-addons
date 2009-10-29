navigating
accessors
	| literal |
	literal := self theClass bindingOf: name.
	^ ((self systemNavigation allCallsOn: literal) asArray sort)
		collect: [:ref | OBMethodNode on: ref]