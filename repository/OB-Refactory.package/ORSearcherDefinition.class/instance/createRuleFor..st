configuration
createRuleFor: aMatcher
	^ ORPluggableSearchRule new
		matcher: aMatcher;
		yourself