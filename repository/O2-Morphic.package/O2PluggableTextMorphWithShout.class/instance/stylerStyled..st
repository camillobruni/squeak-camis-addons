styler
stylerStyled: styledCopyOfText

	textMorph contents runs: styledCopyOfText runs .
	"textMorph paragraph recomposeFrom: 1 to: textMorph contents size delta: 0."  "caused chars to appear in wrong order esp. in demo mode. remove this line when sure it is fixed"
	textMorph updateFromParagraph.
	selectionInterval 
		ifNotNil:[
			textMorph editor
				selectInvisiblyFrom: selectionInterval first to: selectionInterval last;
				storeSelectionInParagraph;
				setEmphasisHere].
	textMorph editor blinkParen.
	self scrollSelectionIntoView