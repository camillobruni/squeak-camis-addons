drawing
showBalloon: msgString hand: aHand 
	"find element at hand to determine icon and finally tooltip"
	| row position |
	handPoint := aHand cursorPoint.
	position := self positionInWorld.
	row := self rowAtLocation: aHand cursorPoint x @ (handPoint y - position y).
	handPoint x - self positionInWorld x < 20 ifTrue: 
		[ (listSource iconAt: row) ifNotNilDo: 
			[ :name | 
			| label |
			label := O2MorphicIcons iconLabelNamed: name.
			label ifNotEmpty: 
				[ balloonShown := true.
				super 
					showBalloon: label
					hand: aHand.
				aHand 
					triggerBalloonFor: self
					after: self balloonHelpDelayTime ] ] ]