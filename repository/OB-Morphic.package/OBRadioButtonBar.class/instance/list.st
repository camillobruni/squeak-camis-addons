accessing
list
	buttons ifNil: 
		[ | labels |
		labels := self getLabels.
		buttons := Array new: labels size.
		labels keysAndValuesDo: 
			[ :index :label | 
			buttons 
				at: index
				put: (OBButtonModel 
						withLabel: label
						inBar: self) ].
		selection := self getSelectionIndex.
		self ].
	^ buttons collect: [ :b | b label ]