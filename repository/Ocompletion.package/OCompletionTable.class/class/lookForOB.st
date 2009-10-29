as yet unclassified
lookForOB
	(Smalltalk at: #OBTextPanel ifAbsent: [^self]) compile: 'createCompletionController
	^ (Optimist ifTrue: [OController] ifFalse: [ECController]) model: self'