as yet unclassified
addBorders
	self borderWidth: 0.
	self submorphs do:
		[:morph |
		morph class = self class
			ifTrue: [morph addBorders]
			ifFalse:
				[morph adoptPaneColor: color.
				morph 
					borderWidth: 2; 
					borderColor: #inset; 
					color: Color transparent]]