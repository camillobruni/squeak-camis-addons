morph creation
newButtonIn: aThemedMorph for: aModel getState: stateSel action: actionSel arguments: args getEnabled: enabledSel getLabel: labelSel help: helpText
	"Answer a new button."

	|b|
	b := PluggableButtonMorphPlus
			on: aModel
			getState: stateSel
			action: actionSel
			label: labelSel.
	b
		arguments: (args ifNil: [{b}]);
		getEnabledSelector: enabledSel;
		cornerStyle: (self buttonCornerStyleIn: aThemedMorph);
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setBalloonText: helpText;
		extent: b minExtent.
	^b