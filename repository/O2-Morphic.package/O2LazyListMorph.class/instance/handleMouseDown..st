drawing
handleMouseDown: anEvent 
	| eventPosition row |
	anEvent wasHandled ifTrue: [ ^ self ].
	eventPosition := anEvent position.
	row := self rowAtLocation: eventPosition x @ eventPosition y.
	(row >= 1 and: [ eventPosition x < O2MorphicIcons iconWidth ]) ifTrue: 
		[ eventPosition x < O2MorphicIcons iconWidth ifTrue: 
			[ (listSource iconAt: row) ifNotNilDo: 
				[ :name | 
				anEvent wasHandled: true.
				(O2MorphicIcons iconActionNamed: name) ifNotNilDo: 
					[ :action | 
					listSource model okToChange ifTrue: 
						[ action 
							value: (listSource nodeAt: row)
							value: listSource model ] ] ] ] ]