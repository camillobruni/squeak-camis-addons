private
userSelectionOf: classNames for: toMatch 
	| exactMatch |
	exactMatch := classNames 
		detect: [ :ea | ea asLowercase = toMatch ]
		ifNone: [ nil ].
	^ exactMatch 
		ifNil: 
			[ O2ChoiceRequest 
				labels: classNames
				lines: #() ]
		ifNotNil: 
			[ O2ChoiceRequest 
				labels: (classNames copyWithFirst: exactMatch)
				lines: #(1 ) ]