morph creation
newTaskbarThumbnailIn: aThemedMorph for: aWindow
	"Answer a taskbar thumbnail morph for the given window."

	|answer thumb|
	thumb := aWindow taskbarThumbnail.
	answer := PanelMorph new
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		layoutInset: 8;
		cellInset: 4;
		addMorphBack: thumb;
		addMorphBack: ((self
			buttonLabelForText: (aWindow labelString truncateWithElipsisTo: 50))
				color: Color white).
	answer
		extent: answer minExtent;
		fillStyle: (self tasklistFillStyleFor: answer);
		borderStyle: (self taskbarThumbnailNormalBorderStyleFor: aWindow);
		cornerStyle: (self taskbarThumbnailCornerStyleFor: answer).
	^answer
			