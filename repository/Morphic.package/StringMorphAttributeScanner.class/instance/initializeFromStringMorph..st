string morph
initializeFromStringMorph: aStringMorph
	| style |
	actualFont := aStringMorph font ifNil: [ TextStyle defaultFont ].
	style := actualFont textStyle.
	emphasis := actualFont emphasis.
	fontNumber := (style fontIndexOf: actualFont) ifNil: [ 1 ].
	textColor := aStringMorph color.
