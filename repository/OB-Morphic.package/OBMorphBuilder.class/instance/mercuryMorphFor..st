private
mercuryMorphFor: aMercuryPanel
	^ (OBPluggableTextMorph
		on: aMercuryPanel
		text: #text
		accept: #accept:notifying:
		readSelection: #selection
		menu: #menu:shifted:)
			font: Preferences standardCodeFont;
			hideScrollBarsIndefinitely;
			acceptOnCR: true;
			height: Preferences standardCodeFont height * 1.2;
			borderWidth: 0;
			vResizing: #rigid;
			hResizing: #spaceFill;
			yourself.