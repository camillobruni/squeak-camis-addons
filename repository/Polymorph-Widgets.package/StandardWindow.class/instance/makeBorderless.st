as yet unclassified
makeBorderless
	"Remove the border and border  width offsets.."

	|l b|
	b  := self class borderWidth.
	self submorphsDo: [:m |
		l := m layoutFrame.
		l ifNotNil: [
			l rightFraction = 1 ifTrue: [l rightOffset: l rightOffset + b].
			l leftFraction = 0 ifTrue: [l leftOffset: l leftOffset - b].
			l bottomFraction = 1 ifTrue: [l bottomOffset: l bottomOffset + b]]].
	self borderWidth: 0