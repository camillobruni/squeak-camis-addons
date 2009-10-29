sending
isDuplicateOf: other
	^ self receiver = other receiver
		and: [self selector = other selector]