subscription
announce: anObject 
	| ann |
	ann := anObject asO2Announcement.
	subscriptions keysAndValuesDo: 
		[ :class :action | 
		(ann isKindOf: class) ifTrue: [ action valueWithArguments: (Array with: ann) ] ].
	^ ann