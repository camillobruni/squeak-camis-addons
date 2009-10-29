initializing
initialize
	panels := OrderedCollection new.
	announcer := O2Announcer new.
	cmdFactories := #().
	self subscribe