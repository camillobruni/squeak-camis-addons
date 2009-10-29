initialization
createTitle
	| transformationMorph titleString |
	titleString := context model title.
	titleString
		ifNil: [^ self].
	transformationMorph := TransformationMorph new.
	self addMorph: transformationMorph.
	titleStringMorph := StringMorph new.
	titleStringMorph font: self class titleFont.
	transformationMorph addMorph: titleStringMorph.
	transformationMorph rotationDegrees: -90.0.
	titleStringMorph contents: titleString.
	transformationMorph topLeft: (self topLeft + (0@12))