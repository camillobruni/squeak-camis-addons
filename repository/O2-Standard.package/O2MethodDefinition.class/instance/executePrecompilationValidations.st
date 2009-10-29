validation
executePrecompilationValidations
	"It executes all selectors beginning with 'validate'. All such selector have to return 
	true/false value and have no arguments. After success validation, self compileText 
	will compiled in self compileClass. 'self compileSelector can be used.'"

	(self class allSelectors select: [:ea | ea beginsWith: 'validate']) 
		do: [:selector | (self perform: selector) ifFalse: [^ false]].
	^ true