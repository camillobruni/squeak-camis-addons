styler
setText: aText
	
	self okToStyle ifFalse:[^self privateSetText: aText].
	self privateSetText: (styler format: aText asText).
	aText size < 4096
		ifTrue:[	styler style: textMorph contents]
		ifFalse:[styler styleInBackgroundProcess:  textMorph contents]
