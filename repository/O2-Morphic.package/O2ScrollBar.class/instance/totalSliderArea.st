geometry
totalSliderArea
	| upperBoundsButton |
	upperBoundsButton := upButton.
	upButton bottom > upperBoundsButton bottom
		ifTrue: [upperBoundsButton := upButton].
	^ bounds isWide
		ifTrue: [upperBoundsButton bounds topRight corner: downButton bounds bottomLeft]
		ifFalse: [upperBoundsButton bounds bottomLeft corner: downButton bounds topRight].
