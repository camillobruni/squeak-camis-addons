accessing
initialize
	| childBounds |
	super initialize.
	self setBorderWidth: 1 borderColor: Color gray.
	childBounds _ self contentBounds.
	label _ StringMorph contents: '' font: ECMenuMorph messageFont.
	label bounds: childBounds.
	self addMorph: label.
	title _ StringMorph contents: '' font: ECMenuMorph titleFont.
	title bounds: self titleBounds.
	self addMorph: title.
	description _ TextMorph new.
	description autoFit: false.
	description bounds: self descriptionBounds.
	description borderWidth: 0.
	self addMorph: description