*Polymorph-Widgets-override
mouseUp: event 
	"The mouse came up within the list; take appropriate action"
	
	| row mdr |
	row := self rowAtLocation: event position.
	event hand hasSubmorphs ifFalse: [
		mdr := self mouseDownRow.
		 self mouseDownRow: nil.
		mdr ifNil: [^self]].
	(self enabled and: [model okToChange])
		ifFalse: [^ self].
	"No change if model is locked or receiver disabled"
	row == self selectionIndex
		ifTrue: [(autoDeselect ifNil: [true]) ifTrue:[row == 0 ifFalse: [self changeModelSelection: 0] ]]
		ifFalse: [self changeModelSelection: row].
	Cursor normal show