building
button: aButtonModel with: aBlock 
	| morph |
	morph := PluggableButtonMorph 
		on: aButtonModel
		getState: #isSelected
		action: #push
		label: #labelMorph.
	morph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		styleWith: OBPlatform current builder.
	^ self 
		current: morph
		do: aBlock