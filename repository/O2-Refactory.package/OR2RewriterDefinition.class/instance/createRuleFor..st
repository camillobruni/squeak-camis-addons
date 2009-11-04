configuration
createRuleFor: aMatcher 
	^ OR2PluggableRewriteRule new
		rewriteRule: aMatcher;
		yourself