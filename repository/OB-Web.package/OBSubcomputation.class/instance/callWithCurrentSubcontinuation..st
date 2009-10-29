as yet unclassified
callWithCurrentSubcontinuation: aBlock
	^ aBlock value: (OBSubcontinuation from: thisContext sender to: context)