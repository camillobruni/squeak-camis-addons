as yet unclassified
mouseUp: event
	"Override a change in PLM that breaks OmniBrowser. This version of the method
	is from Squeak 3.7 and was originally stamped: 'ls 6/22/2001 22:49'"

	| row |
	row := self rowAtLocation: event position.
	"aMorph ifNotNil: [aMorph highlightForMouseDown: false]."
	model okToChange ifFalse:
		[^ self].
	(autoDeselect = false and: [row = 0]) ifTrue: [^ self].  "work-around the no-mans-land bug"
	"No change if model is locked"
	((autoDeselect isNil or: [autoDeselect]) and: [row = self selectionIndex])
		ifTrue: [self changeModelSelection: 0]
		ifFalse: [self changeModelSelection: row].
	Cursor normal show.
