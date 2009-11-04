accessing
label
	^ self browser class isDisplayingDiffs ifTrue: [ 'hide diffs' ] ifFalse: [ 'show diffs' ]