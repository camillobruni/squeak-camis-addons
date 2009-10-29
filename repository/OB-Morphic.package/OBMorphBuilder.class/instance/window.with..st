building
window: aBrowser with: aBlock 
	| window |
	window := SystemWindow labelled: aBrowser labelString.
	window model: aBrowser.
	^self current: window
		do: 
			[aBlock value.
			self layoutPanels]