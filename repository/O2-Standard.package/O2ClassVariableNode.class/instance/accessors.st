navigating
accessors
	| literal |
	literal := (self theClass withAllSuperclasses gather: [ :ea | ea classPool associations ]) detect: [ :ea | ea key = name ].
	^ (self systemNavigation allCallsOn: literal) asArray sort collect: [ :ref | O2MethodNode on: ref ]