label-styles
createCollapseBoxFor: aSystemWindow
	"Answer a button for minimising the window."
	
	|form msb|
	form := self windowMinimizeForm.
	msb := MultistateButtonMorph new extent: form extent.
	msb
		activeEnabledNotOverUpFillStyle: (ImageFillStyle form: form);
		passiveEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	form := self windowMinimizeOverForm.
	msb extent: form extent.
	msb
		activeEnabledOverUpFillStyle: (ImageFillStyle form: form);
		passiveEnabledOverUpFillStyle: (ImageFillStyle form: form).
	form := self windowMinimizeDownForm.
	msb
		extent: form extent;
		activeEnabledOverDownFillStyle: (ImageFillStyle form: form);
		passiveEnabledOverDownFillStyle: (ImageFillStyle form: form);
		addUpAction: [aSystemWindow collapseBoxHit];
		setBalloonText: 'collapse this window' translated;
		extent: aSystemWindow boxExtent.
	^msb