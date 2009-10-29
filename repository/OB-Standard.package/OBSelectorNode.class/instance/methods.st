navigating
methods
	methods ifNil: 
			[methods := SystemNavigation default allMethodsNoDoitsSelect: 
							[:m | 
							m hasLiteralSuchThat: 
									[:lit | 
									lit isString and: 
											[lit isSymbol not 
												and: [lit includesSubstring: selector string caseSensitive: false]]]]].
	^ methods collect: [:m | OBMethodNode on: m]