private
classSatisfiesQuery: aClass
	^ (SystemNavigation default allCallsOn: (Smalltalk associationAt: query) from: aClass) isEmpty not