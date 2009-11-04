*o2-refactory-accessing
allNonMetaClasses
	| classes |
	classes := IdentitySet new: 4096.
	self classesDo: [ :each | 
		each isMeta
			ifFalse: [ classes add: each ] ].
	^ classes asArray