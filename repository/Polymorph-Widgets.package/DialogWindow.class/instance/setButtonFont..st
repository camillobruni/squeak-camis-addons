as yet unclassified
setButtonFont: aFont
	"Set the font for the buttons."

	|buttons e hRes vRes|
	buttons := self buttons.
	e := 0@0.
	buttons do: [:b |
		hRes := b hResizing.
		vRes := b vResizing.
		b
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap.
		b label: b label font: aFont.
		e := e max: b minExtent.
		b
			hResizing: hRes;
			vResizing: vRes].
	buttons do: [:b | b extent: e]