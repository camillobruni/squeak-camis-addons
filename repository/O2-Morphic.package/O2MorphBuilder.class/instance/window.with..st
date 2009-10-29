building
window: aBrowser with: aBlock 
	| window |
	color := aBrowser defaultBackgroundColor.
	window := SystemWindow labelled: aBrowser labelString.
	window model: aBrowser.
	^self current: window
		do: 
			[aBlock value.
			self layoutPanels]