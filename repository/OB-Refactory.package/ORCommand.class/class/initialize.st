initialization
initialize
	Preferences 
		addPreference: #promptOnRefactoring
		categories: #('refactoring') default: true
		balloonHelp: 'Show the changes before applying a refactoring.'.
	Refactoring refactoringOptions
		at: #implementorToInline
		put: [ :ref :imps | self new requestImplementorToInline: imps ];
		at: #methodName
		put: [ :ref :string | self new requestMethodNameFor: string ];
		at: #selfArgumentName
		put: [ :ref | self new requestSelfArgumentName ];
		at: #selectVariableToMoveTo
		put: [ :ref :class :selector | self new selectVariableToMoveMethodTo: selector class: class ];
		at: #variableTypes
		put: [ :ref :types :selected | self new selectVariableTypesFrom: types selected: selected for: ref ];
		at: #extractAssignment
		put: [ :ref :string | self new shouldExtractAssignmentTo: string ];
		at: #inlineExpression
		put: [ :ref :string | self new shouldInlineExpression: string ];
		at: #alreadyDefined
		put: [ :ref :class :selector | self new shouldOverride: selector in: class ];
		at: #useExistingMethod
		put: [ :ref :selector | self new shouldUseExistingMethod: selector ];
		at: #openBrowser
		put: [ :ref :env | self new openEnvironment: env ]