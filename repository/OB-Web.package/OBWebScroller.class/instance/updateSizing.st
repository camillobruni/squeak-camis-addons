as yet unclassified
updateSizing
	| old |
	old _ sizing.
	self basicUpdateSizing.
	sizing = old ifFalse:
		[self createMessage
			selector: #setSizing;
			arguments: {sizing};
			queue]