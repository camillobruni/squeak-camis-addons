*o2-refactory-accessing
allClasses
	| classes |
	classes := IdentitySet new: 4096.
	self classesDo: [ :each | 
		classes add: each theNonMetaClass ].
	^ classes asArray