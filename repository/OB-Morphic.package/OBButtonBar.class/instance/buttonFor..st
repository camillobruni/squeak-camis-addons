updating
buttonFor: aCommand 
	| buttonColor |
	buttonColor := model color duller.
	^ (PluggableButtonMorph 
		on: aCommand
		getState: #isActive
		action: (aCommand isActive 
				ifTrue: [ #execute ]
				ifFalse: [ #yourself ])
		label: #buttonLabel)
		onColor: buttonColor
			offColor: buttonColor whiter;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		styleWith: OBPlatform current builder;
		setBalloonText: aCommand longDescription;
		yourself