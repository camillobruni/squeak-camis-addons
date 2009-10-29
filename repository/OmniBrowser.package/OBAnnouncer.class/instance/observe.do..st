subscription
observe: aClass do: aValuable 
	| actions |
	actions := subscriptions 
		at: aClass
		ifAbsent: [ ActionSequence new ].
	subscriptions 
		at: aClass
		put: (actions copyWith: aValuable)