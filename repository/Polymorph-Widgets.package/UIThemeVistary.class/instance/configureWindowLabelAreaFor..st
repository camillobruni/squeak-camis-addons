label-styles
configureWindowLabelAreaFor: aWindow
	"Configure the label area for the given window."
	
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @ 0).
	aWindow hasMenuBox ifTrue: [aWindow addMenuControl].
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @ 0).
	aWindow basicLabel ifNotNilDo: [:label |
		label hResizing: #spaceFill.
		aWindow labelArea addMorphBack: label].
	aWindow hasCollapseBox ifTrue: [aWindow addCollapseBox].
	aWindow hasExpandBox ifTrue: [aWindow addExpandBox].
	aWindow hasCloseBox ifTrue: [aWindow addCloseBox].
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @ 0)