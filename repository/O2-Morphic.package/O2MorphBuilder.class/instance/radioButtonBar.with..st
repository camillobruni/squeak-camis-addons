building
radioButtonBar: aSwitch with: aBlock 
	| morph buttonBarClass |
	buttonBarClass := aSwitch browser class radioButtonBarClass.
	^aSwitch isActive 
		ifTrue: 
			[morph := buttonBarClass 
						on: aSwitch
						list: #list
						selected: #selection
						changeSelected: #selection:.
			current ifNotNil: [current addButton: morph].
			morph]