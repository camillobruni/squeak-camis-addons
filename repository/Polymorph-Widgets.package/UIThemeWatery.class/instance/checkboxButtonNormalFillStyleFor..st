fill-styles-buttons
checkboxButtonNormalFillStyleFor: aCheckboxButton
	"Return the normal checkbox button fillStyle for the given button."
	
	|c ib|
	c := Color white twiceDarker.
	ib := aCheckboxButton innerBounds.
	^(GradientFillStyle ramp: {
			0.0->(c alphaMixed: 0.4 with: Color white).
			0.3->(c alphaMixed: 0.4 with: Color white).
			0.4->c.
			1.0->Color white})
		origin: aCheckboxButton innerBounds origin;
		direction: 0@ib height;
		radial: false