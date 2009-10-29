building
radioButtonBar: aSwitch with: aBlock 
	| morph |
	^ aSwitch isActive ifTrue: 
		[ morph := OBRadioButtonBar 
			on: aSwitch
			list: #list
			selected: #selection
			changeSelected: #selection:.
		current isNil ifFalse: [ current addButton: morph ].
		morph ]