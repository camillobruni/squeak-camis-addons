*o2-refactory-accessing
allMetaClasses
	| classes |
	classes := IdentitySet new: 4096.
	self classesDo: [ :each | 
		each isMeta
			ifTrue: [ classes add: each ] ].
	^ classes asArray