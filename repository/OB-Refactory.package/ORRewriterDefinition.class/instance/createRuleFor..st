configuration
createRuleFor: aMatcher
	^ ORPluggableRewriteRule new
		rewriteRule: aMatcher;
		yourself