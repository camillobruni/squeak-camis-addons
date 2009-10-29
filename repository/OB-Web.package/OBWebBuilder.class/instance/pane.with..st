building
pane: aColumn with: aBlock 
	^self current: (OBWebPane model: aColumn)
		do: 
			[self current: (OBWebList model: aColumn) do: [].
			aBlock value]