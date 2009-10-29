as yet unclassified
terminate: v
	| frame |
	frame _ thisContext sender.
	[frame == context] whileFalse: [frame _ frame swapSender: nil].
	thisContext swapSender: context.
	^ v
