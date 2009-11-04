updating
selectionChanged: anAnnouncement
	| interval |
	interval := self environment selectionIntervalFor: self definitionPanel text.
	interval isNil ifFalse: [ self definitionPanel selection: interval ]