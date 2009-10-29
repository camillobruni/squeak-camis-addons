as yet unclassified
value: v
	self restoreValues.
	joinPoint swapSender: thisContext sender.
	thisContext swapSender: values first.
	^ v