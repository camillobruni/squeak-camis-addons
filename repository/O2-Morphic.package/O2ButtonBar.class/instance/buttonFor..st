updating
buttonFor: aCommand 
	| buttonColor |
	buttonColor := model color duller.
	^ (PluggableButtonMorphPlus 
		on: aCommand
		getState: nil
		action: (aCommand isActive 
				ifTrue: [ #execute ]
				ifFalse: [ #yourself ])
		label: #buttonLabelWithSpaces)
		onColor: buttonColor
			offColor: buttonColor whiter;
		height: Preferences standardCodeFont height * 1.84;
		getEnabledSelector: #isActive;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		styleWith: O2MorphBuilder new;
		setBalloonText: aCommand longDescription;
		cellInset: 1;
		yourself