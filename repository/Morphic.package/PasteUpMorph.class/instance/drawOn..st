drawing
drawOn: aCanvas 
	"Draw in order:
	- background color
	- grid, if any
	- background sketch, if any
	- Update and draw the turtleTrails form. See the comment in updateTrailsForm.
	- cursor box if any

	Later (in drawSubmorphsOn:) I will skip drawing the background sketch."

	"draw background fill"
	super drawOn: aCanvas.

	"draw grid"
	(self griddingOn and: [self gridVisible]) 
		ifTrue: 
			[aCanvas fillRectangle: self bounds
				fillStyle: (self 
						gridFormOrigin: self gridOrigin
						grid: self gridModulus
						background: nil
						line: Color lightGray)].

	"draw background sketch."
	backgroundMorph ifNotNil: [
		self clipSubmorphs ifTrue: [
			aCanvas clipBy: self clippingBounds
				during: [ :canvas | canvas fullDrawMorph: backgroundMorph ]]
			ifFalse: [ aCanvas fullDrawMorph: backgroundMorph ]].

	"draw cursor"
	(submorphs notEmpty and: [self indicateCursor]) 
		ifTrue: 
			[aCanvas 
				frameRectangle: self selectedRect
				width: 2
				color: Color black]