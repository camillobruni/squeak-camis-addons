configuration
createRuleFor: aMatcher 
	^ OR2PluggableSearchRule new
		matcher: aMatcher;
		yourself