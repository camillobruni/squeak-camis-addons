private
mercuryMorphFor: aMercuryPanel 
	^ (O2PluggableTextMorph 
		on: aMercuryPanel
		text: #text
		accept: #accept:notifying:
		readSelection: #selection
		menu: #menu:shifted:)
		font: Preferences standardCodeFont;
		hideScrollBarsIndefinitely;
		acceptOnCR: true;
		height: Preferences standardButtonFont height * 1.6;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		width: 235;
		borderWidth: 1;
		cellPositioning: #bottomLeft;
		yourself