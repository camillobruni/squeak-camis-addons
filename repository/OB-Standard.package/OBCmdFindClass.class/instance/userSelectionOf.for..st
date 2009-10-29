private
userSelectionOf: classNames for: toMatch 
	| exactMatch |
	exactMatch := classNames 
		detect: [ :ea | ea asLowercase = toMatch ]
		ifNone: [ nil ].
	^ exactMatch isNil 
		ifTrue: 
			[ OBChoiceRequest 
				labels: classNames
				lines: #() ]
		ifFalse: 
			[ OBChoiceRequest 
				labels: (classNames copyWithFirst: exactMatch)
				lines: #(1 ) ]