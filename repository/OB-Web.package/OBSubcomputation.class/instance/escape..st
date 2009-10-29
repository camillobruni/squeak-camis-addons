as yet unclassified
escape: aBlock
	|  continuation |
	continuation _ OBSubcontinuation from: thisContext sender to: context.
	thisContext swapSender: context.
	^ aBlock value: continuation