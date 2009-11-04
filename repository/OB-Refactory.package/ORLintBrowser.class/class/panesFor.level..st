private
panesFor: aRule level: anInteger
	^ (aRule rules collect: [ :each |
		each isComposite
			ifFalse: [ anInteger ]
			ifTrue: [ self panesFor: each level: anInteger + 1 ] ])
		detectMax: [ :each | each ]