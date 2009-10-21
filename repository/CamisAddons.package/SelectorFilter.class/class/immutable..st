instance creation
immutable: anObject 
	^ self new
		object: anObject;
		forbiddenSelectors: anObject class mutatingSelectors