actions
update: anEnvironment
	changes := CompositeRefactoryChange named: self name.
	changes changes: self rule changes.
	problemCount := changes problemCount