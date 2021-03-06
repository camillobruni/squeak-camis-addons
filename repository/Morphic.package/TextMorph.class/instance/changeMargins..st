menu
changeMargins: evt
	| handle origin aHand oldMargin newMargin |
	aHand := evt ifNil: [self primaryHand] ifNotNil: [evt hand].
	origin := aHand position.
	oldMargin := margins.
	handle := HandleMorph new
		forEachPointDo:
			[:newPoint | handle removeAllMorphs.
			handle addMorph:
				(LineMorph from: origin to: newPoint color: Color black width: 1).
			newMargin := (newPoint - origin max: 0@0) // 5.
			self margins: newMargin]
		lastPointDo:
			[:newPoint | handle deleteBalloon.
			self halo ifNotNil: [:halo | halo addHandles].
			self rememberCommand:
				(Command new cmdWording: ('margin change for ' translated,self nameForUndoWording);
					undoTarget: self selector: #margins: argument: oldMargin;
					redoTarget: self selector: #margins: argument: newMargin;
					yourself)].
	aHand attachMorph: handle.
	handle setProperty: #helpAtCenter toValue: true.
	handle showBalloon:
'Move cursor down and to the right
to increase margin inset.
Click when done.' hand: evt hand.
	handle startStepping