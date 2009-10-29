as yet unclassified
flushQueue
	| tmp |
	tmp _ queue asArray.
	queue _ OrderedCollection new.
	^ tmp