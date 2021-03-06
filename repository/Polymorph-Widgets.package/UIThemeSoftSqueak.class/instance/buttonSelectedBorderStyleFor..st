border-styles-buttons
buttonSelectedBorderStyleFor: aButton
	"Return the selected button borderStyle for the given button."

	|c|
	c := aButton colorToUse.
	aButton isDefault
		ifTrue: [c := c alphaMixed: 0.5 with: Color black].
	^BorderStyle inset
		width: 1;
		baseColor: c