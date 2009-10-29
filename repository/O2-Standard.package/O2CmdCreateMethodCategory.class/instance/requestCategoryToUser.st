execution
requestCategoryToUser
	"Present a choice of categories or prompt for a new category name."
	| labels reject lines answer newLabel |
	newLabel := 'new...'.
	labels := OrderedCollection with: newLabel.
	reject := Set new.
	reject addAll: target organization categories;
		add: ClassOrganizer nullCategory;
		add: ClassOrganizer default.
	lines := OrderedCollection new.
	self getCategories: labels
		reject: reject
		lines: lines.
	^ (labels size = 1 or: 
		[ answer := O2ChoiceRequest 
			prompt: 'Add Category'
			labels: labels
			values: labels
			lines: lines.
		answer ifNil: [ ^ nil ].
		answer = newLabel ]) 
		ifTrue: [ super requestCategoryToUser ]
		ifFalse: [ answer ]